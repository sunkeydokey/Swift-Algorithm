//: [Previous](@previous)

import Foundation

// [자릿수 더하기](https://school.programmers.co.kr/learn/courses/30/lessons/12931)

func solution(_ n: Int) -> Int {
    return "\(n)".compactMap { $0.hexDigitValue }.reduce(0) { added, current in
        return added + current
    }
}

//: [Next](@next)
