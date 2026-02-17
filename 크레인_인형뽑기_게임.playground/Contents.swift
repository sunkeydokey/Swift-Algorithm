import Foundation

// [크레인 인형뽑기 게임](https://school.programmers.co.kr/learn/courses/30/lessons/64061)

func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    var result = 0
    var bucket: [Int] = []
    var copiedBoard = board

    for move in moves {
        let prevCount = bucket.count
        let lastItem = bucket.last
        for i in 0 ..< copiedBoard.count {
            if copiedBoard[i][move - 1] == 0 {
                continue
            } else {
                let doll = copiedBoard[i][move - 1]
                copiedBoard[i][move - 1] = 0
                bucket.append(doll)
                break
            }
        }
        if prevCount != bucket.count {
            if lastItem == bucket.last {
                bucket.removeLast()
                bucket.removeLast()
                result += 2
            }
        }
    }
    return result
}
