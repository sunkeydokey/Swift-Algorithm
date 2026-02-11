//: [Previous](@previous)

import Foundation

// [이상한 문자 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/12930)

func solution(_ s: String) -> String {
    var result = ""
    var isOdd = true
    for char in s {
        print(isOdd)
        if char == " " {
            result.append(char)
            isOdd = true
            continue
        }

        if isOdd {
            result.append(char.uppercased())
        } else {
            result.append(char.lowercased())
        }
        isOdd.toggle()
    }
    return result
}

//: [Next](@next)
