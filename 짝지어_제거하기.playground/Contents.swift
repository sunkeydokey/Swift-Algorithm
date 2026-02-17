import Foundation

// [짝지어 제거하기](https://school.programmers.co.kr/learn/courses/30/lessons/12973)

func solution(_ s: String) -> Int {
    var charStack: [Character] = []

    for char in s {
        charStack.append(char)

        if charStack.count >= 2, charStack[charStack.count - 2] == charStack.last {
            charStack.removeLast(2)
        }
    }

    return charStack.isEmpty ? 1 : 0
}

solution("baabaa")
