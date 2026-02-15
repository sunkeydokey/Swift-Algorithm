//: [Previous](@previous)

import Foundation

// [n^2 배열 자르기](https://school.programmers.co.kr/learn/courses/30/lessons/87390)

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var result: [Int] = []
    for i in Int(left) ... Int(right) {
        let row = i / n
        let col = i % n
        result.append(max(row + 1, col + 1))
    }
    return result
}

func timeOver(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var matrix = [[Int]](
        repeating: [Int](repeating: .zero, count: n),
        count: n
    )

    for row in 0 ..< n {
        for col in 0 ..< n {
            matrix[row][col] = row >= col ? row + 1 : col + 1
        }
    }

    let flatMap = matrix.flatMap { $0 }

    return Array(flatMap[Int(left) ... Int(right)])
}

//: [Next](@next)
