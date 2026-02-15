import Foundation

// [달리기 경주](https://school.programmers.co.kr/learn/courses/30/lessons/178871)

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var ratingDict: [Int: String] = [:]
    var playerDict: [String: Int] = [:]

    for i in 0 ..< players.count {
        let player = players[i]
        ratingDict[i] = player
        playerDict[player] = i
    }

    for call in callings {
        let rate = playerDict[call]!
        let prevPlayer = ratingDict[rate - 1]!
        ratingDict[rate - 1] = call
        ratingDict[rate] = prevPlayer
        playerDict[call] = rate - 1
        playerDict[prevPlayer] = rate
    }

    var result: [String] = []

    for i in 0 ..< players.count {
        result.append(ratingDict[i]!)
    }

    return result
}
