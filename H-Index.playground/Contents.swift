import Foundation

// [H-Index](https://school.programmers.co.kr/learn/courses/30/lessons/42747)

func solution(_ citations: [Int]) -> Int {
    let sorted = citations.sorted()

    var result = 0

    for i in 0 ..< sorted.count {
        let refCount = sorted[i]
        let rests = sorted.count - i
        if refCount >= rests {
            return min(refCount, rests)
        }
    }

    return result
}
