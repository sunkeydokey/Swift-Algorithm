import Foundation

// [K번째수](https://school.programmers.co.kr/learn/courses/30/lessons/42748)

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var result: [Int] = []
    for command in commands {
        let number = array[command[0] - 1 ..< command[1]].sorted()[command[2] - 1]
        result.append(number)
    }
    return result
}
