import Foundation

// [최소직사각형](https://school.programmers.co.kr/learn/courses/30/lessons/86491)

func solution(_ sizes: [[Int]]) -> Int {
    let rotatedSizes = sizes.map { $0.sorted() }
    let standardSide = rotatedSizes.flatMap { $0[0] }.max()!
    let verticalSide = rotatedSizes.flatMap { $0[1] }.max()!

    return standardSide * verticalSide
}
