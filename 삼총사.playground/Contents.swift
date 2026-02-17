import Foundation

// [삼총사](https://school.programmers.co.kr/learn/courses/30/lessons/131705)

func solution(_ number: [Int]) -> Int {
    var result = 0
    for i in 0 ... number.count - 3 {
        for j in i + 1 ... number.count - 2 {
            for k in j + 1 ... number.count - 1 {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }

    return result
}

solution([-2, 3, 0, 2, -5])
solution([-3, -2, -1, 0, 1, 2, 3])
solution([-1, 1, -1, 1])
