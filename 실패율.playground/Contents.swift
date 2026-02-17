import Foundation

// [실패율](https://school.programmers.co.kr/learn/courses/30/lessons/42889)

func solution(_ N: Int, _ stages: [Int]) -> [Int] {
    let tryingDict = stages.reduce(
        into: [Int: Int]()
    ) { dict, value in
        dict[value, default: 0] += 1
    }

    var falilures: [[Int]] = []

    var players = stages.count
    for stage in 1 ... N {
        players -= tryingDict[stage - 1, default: 0]
        falilures.append([stage, tryingDict[stage, default: 0], players])
    }

    let sorted = falilures.sorted { left, right in
        return (Float(left[1]) / Float(left[2])) >
            (Float(right[1]) / Float(right[2]))
    }

    return sorted.map { $0[0] }
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
print(solution(4, [4, 4, 4, 4, 4]))
