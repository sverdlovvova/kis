#include "similarity.hpp"

#include <iostream>

int main(int argc, const char* argv[]) {
  if (argc < 3) {
    std::cout << "Give two directories and (optional) threshold in args\n";
    return 1;
  }

  const std::filesystem::path dir1(argv[1]);
  const std::filesystem::path dir2(argv[2]);
  const int threshold = argc > 3 ? std::stoi(argv[3]) : 90;

  SimilarityComponent(dir1, dir2, threshold).ProcessDirectories();

  return 0;
}
