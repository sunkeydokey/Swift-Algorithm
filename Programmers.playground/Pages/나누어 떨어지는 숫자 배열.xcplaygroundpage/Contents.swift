//: [Previous](@previous)

import Foundation

// [나누어 떨어지는 숫자 배열](https://school.programmers.co.kr/learn/courses/30/lessons/12910)

func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    let result = arr.filter { $0 % divisor == 0 }
    return result.isEmpty ? [-1] : result.sorted()
}

//: [Next](@next)
