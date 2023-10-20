#include "similarity.hpp"

#include <algorithm>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <vector>

namespace {

using path = std::filesystem::path;
static constexpr const size_t kBlockSize = 3;

std::unordered_map<std::string, int64_t> CountCoords(
        const path& file_path) {
  std::unordered_map<std::string, int64_t> coords;
  std::ifstream input(file_path, std::ios::binary);
  std::string cur;
  char c;
  while (input.get(c)) {
    cur += c;
    if (cur.size() == kBlockSize) {
      ++coords[cur];
      cur = "";
    }
  }
  return coords;
}

SimilarityType FindType(
    const std::unordered_map<std::string, int64_t>& coords_1,
    const std::unordered_map<std::string, int64_t>& coords_2,
    int threshold) {
  int64_t sum_squares = 0;
  int64_t first_length = 0;
  int64_t second_length = 0;
  for (const auto& [diversity, coord_1] : coords_1) {
    auto coord_2 = coords_2.count(diversity) ? coords_2.at(diversity) : 0;
    sum_squares += (coord_1 - coord_2) * (coord_1 - coord_2);
    first_length += coord_1 * coord_1;
    second_length += coord_2 * coord_2;
  }
  for (const auto& [diversity, coord_2] : coords_2) {
    auto coord_1 = coords_1.count(diversity) ? coords_1.at(diversity) : 0;
    if (coord_1 > 0) {
      continue; // уже обработали в первом цикле
    }
    sum_squares += coord_2 * coord_2;
    second_length += coord_2 * coord_2;
  }
  if (sum_squares == 0) {
    return SimilarityType::kTheSame;
  }
  auto length = sqrt(sum_squares);

  if (length / sqrt(std::max(first_length, second_length)) * 100 <
            100 - threshold) {
    return SimilarityType::kSimilar;
  }
  return SimilarityType::kDifferent;
}

} // namespace


SimilarityComponent::SimilarityComponent(const path& dir1, const path& dir2,
                    const int threshold) :
                    dir1(dir1), dir2(dir2), threshold(threshold) {}

void SimilarityComponent::ProcessDirectories() const {
  std::vector<std::pair<std::string,
        std::unordered_map<std::string, int64_t>>> coords_1;
  std::vector<std::pair<std::string,
        std::unordered_map<std::string, int64_t>>> coords_2;

  for (const auto& entry : std::filesystem::directory_iterator(dir1)) {
    if (entry.is_regular_file()) {
      coords_1.push_back({entry.path(), CountCoords(entry.path())});
    }
  }

  for (const auto& entry : std::filesystem::directory_iterator(dir2)) {
    if (entry.is_regular_file()) {
      coords_2.push_back({entry.path(), CountCoords(entry.path())});
    }
  }

  std::vector<std::pair<std::string, std::string>> same;
  std::vector<std::pair<std::string, std::string>> similar;
  std::unordered_set<std::string> has_same_or_similar;

  for (const auto& file1 : coords_1) {
    for (const auto& file2 : coords_2) {
      const auto type = FindType(file1.second, file2.second, threshold);
      switch (type) {
        case SimilarityType::kTheSame:
          same.push_back({file1.first, file2.first});
          has_same_or_similar.insert(file1.first);
          has_same_or_similar.insert(file2.first);
          break;
        case SimilarityType::kSimilar:
          similar.push_back({file1.first, file2.first});
          has_same_or_similar.insert(file1.first);
          has_same_or_similar.insert(file2.first);
          break;
        default:
          break;
      }
    }
  }

  std::cout << "Identical files:\n";
  for (const auto& [file1, file2] : same) {
    std::cout << file1 << " - " << file2 << '\n';
  }

  std::cout << "Similar files:\n";
  for (const auto& [file1, file2] : similar) {
    std::cout << file1 << " - " << file2 << '\n';
  }

  std::cout << "Files from first directory that are absent in second:\n";
  for (const auto& [file, _] : coords_1) {
    if (has_same_or_similar.find(file) == has_same_or_similar.end()) {
      std::cout << file << '\n';
    }
  }

  std::cout << "Files from second directory that are absent in first:\n";
  for (const auto& [file, _] : coords_2) {
    if (has_same_or_similar.find(file) == has_same_or_similar.end()) {
      std::cout << file << '\n';
    }
  }
}
