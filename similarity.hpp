#pragma once

#include <filesystem>

enum class SimilarityType { kTheSame, kSimilar, kDifferent };

class SimilarityComponent {
public:
  SimilarityComponent(const std::filesystem::path& dir1,
                      const std::filesystem::path& dir2,
                      const int threshold);

  void ProcessDirectories() const;

private:
  const std::filesystem::path dir1;
  const std::filesystem::path dir2;
  const int threshold;
};
