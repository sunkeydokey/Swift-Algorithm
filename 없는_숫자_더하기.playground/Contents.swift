import Foundation

// [없는 숫자 더하기](https://school.programmers.co.kr/learn/courses/30/lessons/86051)

func solution(_ numbers: [Int]) -> Int {
    let excepted = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].filter { !numbers.contains($0) }

    return excepted.reduce(0) { $0 + $1 }
}
