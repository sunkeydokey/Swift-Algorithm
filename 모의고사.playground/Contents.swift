import Foundation

// [모의고사](https://school.programmers.co.kr/learn/courses/30/lessons/42840)

func solution(_ answers: [Int]) -> [Int] {
    let first = [1, 2, 3, 4, 5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var correct = [(student: 1, score: 0), (student: 2, score: 0), (student: 3, score: 0)]

    for i in 0 ..< answers.count {
        let right = answers[i]
        if first[i % first.count ] == right {
            correct[0].score += 1
        }
        if second[i % second.count] == right {
            correct[1].score += 1
        }
        if third[i % third.count] == right {
            correct[2].score += 1
        }
    }

    let maxScore = max(correct[0].score, correct[1].score, correct[2].score)

    return correct.filter { $0.score == maxScore }.map { $0.student }
}

print(solution([1, 2, 3, 4, 5]))
