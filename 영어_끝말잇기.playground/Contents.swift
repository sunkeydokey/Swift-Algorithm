import Foundation

//  [영어 끝말잇기](https://school.programmers.co.kr/learn/courses/30/lessons/12981)

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var wordSet = Set<String>()

    for i in 0 ..< words.count {
        if i == 0 {
            wordSet.insert(words[i])
            continue
        }

        if words[i - 1].last != words[i].first || wordSet.contains(words[i]) {
            return [(i % n) + 1, (i / n) + 1]
        }
        wordSet.insert(words[i])
    }

    return [0, 0]
}

print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))

print(solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"]))

print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
