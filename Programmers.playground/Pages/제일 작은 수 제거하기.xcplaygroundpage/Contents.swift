//: [Previous](@previous)

import Foundation

// [제일 작은 수 제거하기](https://school.programmers.co.kr/learn/courses/30/lessons/12935)

func solution(_ arr: [Int]) -> [Int] {
    var value = Int.max
    for (i, current) in arr.enumerated() {
        if current < value {
            value = current
        }
    }
    let result = arr.filter { $0 != value }
    return result.isEmpty ? [-1] : result
}

//: [Next](@next)
