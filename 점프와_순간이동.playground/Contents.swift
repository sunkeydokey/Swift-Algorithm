import Foundation

// [점프와 순간 이동](https://school.programmers.co.kr/learn/courses/30/lessons/12980)

func solution(_ n: Int) -> Int {
    var goal = n

    var use = 0
    while goal > 0 {
        if goal % 2 == 1 {
            goal -= 1
            use += 1
        } else {
            goal /= 2
        }
    }

    return use
}

print(solution(5000))
