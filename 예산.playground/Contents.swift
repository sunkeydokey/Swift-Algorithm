import Foundation

// [예산](https://school.programmers.co.kr/learn/courses/30/lessons/12982)

func solution(_ d: [Int], _ budget: Int) -> Int {
    let sorted = d.sorted()

    var i = 0
    var sum = 0
    while sum < budget, i < sorted.count {
        sum += sorted[i]
        if sum > budget {
            break
        }
        i += 1
    }

    return i
}

solution([1, 3, 5, 2, 4], 9)
solution([2, 2, 3, 3], 10)
