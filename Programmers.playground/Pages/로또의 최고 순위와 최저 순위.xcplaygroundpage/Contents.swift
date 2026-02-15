//: [Previous](@previous)

import Foundation

// [로또의 최고 순위와 최저 순위](https://school.programmers.co.kr/learn/courses/30/lessons/77484)

func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    let zeroCounts = lottos.filter { $0 == 0 }.count
    let correctCounts = lottos.filter { win_nums.contains($0) }.count

    let expected = 7 - (zeroCounts + correctCounts)
    let worst = 7 - correctCounts
    return [expected > 6 ? 6 : expected, worst > 6 ? 6 : worst]
}

//: [Next](@next)
