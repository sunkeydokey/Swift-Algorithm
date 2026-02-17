import Foundation

// [명예의 전당 (1)](https://school.programmers.co.kr/learn/courses/30/lessons/138477)

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var honors: [Int] = []
    var result: [Int] = []

    for s in score {
        honors.append(s)
        if honors.count <= k {
            result.append(honors.min()!)
        } else {
            result.append(
                honors.sorted()[honors.count - k ..< honors.count].min()!
            )
        }
    }
    return result
}
