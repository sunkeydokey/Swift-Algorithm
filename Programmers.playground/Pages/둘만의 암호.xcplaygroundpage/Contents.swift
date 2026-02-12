//: [Previous](@previous)

import Foundation

// [둘만의 암호](https://school.programmers.co.kr/learn/courses/30/lessons/155652)

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    let alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    let sArray = s.map { String($0) }

    var result = ""

    for i in 0 ..< sArray.count {
        let alphaIndex = alphabets.firstIndex(of: String(sArray[i]))!
        var passed = 0
        var goal = 0
        while goal < index {
            passed += 1
            if !skip
                .contains(alphabets[(Int(alphaIndex) + passed) % alphabets.count])
            {
                goal += 1
            }
        }
        result.append(alphabets[(Int(alphaIndex) + passed) % alphabets.count])
    }
    return result
}

func dictionarySolution(_ s: String, _ skip: String, _ index: Int) -> String {
    let alphabets = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

    let filtered = alphabets.filter { !skip.contains($0) }

    let dict = filtered.enumerated().reduce(into: [:]) { dictionary, alphbet in
        dictionary[alphbet.element] = filtered[(alphbet.offset + index) % filtered.count]
    }

    return s.compactMap { dict[String($0)] }.joined()
}

//: [Next](@next)
