//: [Previous](@previous)

import Foundation

// [문자열 내 마음대로 정렬하기](https://school.programmers.co.kr/learn/courses/30/lessons/12915)

func solution(_ strings: [String], _ n: Int) -> [String] {
    return strings.sorted { left, right in
        let leftN = left.index(left.startIndex, offsetBy: n)
        let rightN = right.index(right.startIndex, offsetBy: n)
        if left[leftN] == right[rightN] {
            return left < right
        }
        return left[leftN] < right[rightN]
    }
}

print(solution(["sun", "bed", "car"], 1))
print(solution(["abce", "abcd", "cdx"], 2))
print(solution(["cnbc", "anbcd"], 1))
print(solution(["xbd", "cbd", "dad"], 1))
//: [Next](@next)
