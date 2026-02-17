import Foundation

// [가장 큰 수](https://school.programmers.co.kr/learn/courses/30/lessons/42746)

func solution(_ numbers: [Int]) -> String {
    let sorted = numbers.sorted { left, right in
        let leftString = String(left)
        let rightString = String(right)

        return (leftString + rightString) > (rightString + leftString)
    }

    let result = sorted.map { String($0) }.joined()
    if result.hasPrefix("0") {
        return "0"
    }

    return result
}

solution([6, 10, 2])
solution([3, 30, 34, 5, 9])

solution([0])
