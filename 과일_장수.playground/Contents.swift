import Foundation

func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    var sorted = score.sorted()

    var result = 0

    while sorted.count >= m {
        var box: [Int] = []
        for _ in 0 ..< m {
            box += [sorted.removeLast()]
        }
        result += box.min()! * m
    }

    return result
}
