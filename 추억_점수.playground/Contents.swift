import Foundation

// [추억 점수](https://school.programmers.co.kr/learn/courses/30/lessons/176963)

func solution(_ name: [String], _ yearning: [Int], _ photo: [[String]]) -> [Int] {
    var dict: [String: Int] = [:]
    for i in 0 ..< name.count {
        dict[name[i]] = yearning[i]
    }

    return photo.map { $0.reduce(0) { $0 + dict[$1, default: 0] } }
}
