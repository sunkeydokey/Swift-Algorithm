//: [Previous](@previous)

import Foundation

// [대충 만든 자판](https://school.programmers.co.kr/learn/courses/30/lessons/160586)

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var result = [Int](repeating: 0, count: targets.count)
    for i in 0 ..< targets.count {
        for char in targets[i] {
            var store: [Int] = []
            keymap.forEach { string in
                if let index = string.firstIndex(of: char) {
                    let touch = string.distance(from: string.startIndex, to: index) + 1
                    store.append(touch)
                }
            }
            if store.isEmpty {
                result[i] = -1
                break
            } else {
                result[i] += store.min() ?? 1
            }
        }
    }
    return result
}

//: [Next](@next)
