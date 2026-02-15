import Foundation

// [바탕화면 정리](https://school.programmers.co.kr/learn/courses/30/lessons/161990)

func solution(_ wallpaper: [String]) -> [Int] {
    var result: [Int] = [.max, .max, 0, 0]

    for i in 0 ..< wallpaper.count {
        let array = wallpaper[i].map { String($0) }
        for j in 0 ..< array.count {
            if array[j] == "#" {
                if i < result[0] {
                    result[0] = i
                }
                if j < result[1] {
                    result[1] = j
                }
                if i + 1 > result[2] {
                    result[2] = i + 1
                }
                if j + 1 > result[3] {
                    result[3] = j + 1
                }
            }
        }
    }

    return result
}
