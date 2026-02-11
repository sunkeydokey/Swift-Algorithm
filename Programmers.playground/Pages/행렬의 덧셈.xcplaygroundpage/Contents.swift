//: [Previous](@previous)

import Foundation

// [행렬의 덧셈](https://school.programmers.co.kr/learn/courses/30/lessons/12950)

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for col in 0 ..< arr1.count {
        result.append([])
        for row in 0 ..< arr1[col].count {
            result[col].append(arr1[col][row] + arr2[col][row])
        }
    }
    return result
}

func zipSolution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { zip($0, $1).map { $0 + $1 }}
}

//: [Next](@next)
