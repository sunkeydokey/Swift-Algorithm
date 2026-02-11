//: [Previous](@previous)

import Foundation

// [핸드폰 번호 가리기](https://school.programmers.co.kr/learn/courses/30/lessons/12948)
func solution(_ phone_number: String) -> String {
    let length = phone_number.count
    let result = phone_number.enumerated().map { i, char in
        if i < length - 4 {
            return "*"
        } else {
            return String(char)
        }
    }.joined()
    return result
}

func suffixSolution(_ phone_number: String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}

//: [Next](@next)
