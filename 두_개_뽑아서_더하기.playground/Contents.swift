import UIKit

// [두 개 뽑아서 더하기](https://school.programmers.co.kr/learn/courses/30/lessons/68644)

func solution(_ numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for i in 0 ..< numbers.count - 1 {
        for j in i + 1 ..< numbers.count {
            result.append(numbers[i] + numbers[j])
        }
    }

    return Array(Set(result)).sorted()
}
