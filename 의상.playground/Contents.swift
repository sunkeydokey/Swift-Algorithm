import Foundation

// [의상](https://school.programmers.co.kr/learn/courses/30/lessons/42578)
func solution(_ clothes: [[String]]) -> Int {
    var dict: [String: Int] = [:]
    for cloth in clothes {
        dict[cloth[1], default: 0] += 1
    }

    return dict.values.reduce(1) { $0 * ($1 + 1) } - 1
}
