import Foundation

// [카드 뭉치](https://school.programmers.co.kr/learn/courses/30/lessons/159994)

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    let cards1Contained = goal.filter { cards1.contains($0) }
    let cards2Contained = goal.filter { cards2.contains($0) }

    let is1Same = Array(cards1[0 ..< cards1Contained.count]) == cards1Contained
    let is2Same = Array(cards2[0 ..< cards2Contained.count]) == cards2Contained

    return is1Same && is2Same ? "Yes" : "No"
}

print(solution(["i", "drink", "water"], ["want", "to"], ["i", "want", "to", "drink", "water"]))

print(solution(["i", "water", "drink"], ["want", "to"], ["i", "want", "to", "drink", "water"]))

print(solution(["i", "see", "to"], ["you", "now", "me"], ["i", "see", "now", "me"]))
