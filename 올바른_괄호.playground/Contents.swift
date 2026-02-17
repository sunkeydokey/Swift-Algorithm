import Foundation

// [올바른 괄호](https://school.programmers.co.kr/learn/courses/30/lessons/12909)

func solution(_ s: String) -> Bool {
    var stack: [String] = []
    let arr = s.map { String($0) }

    for i in 0 ..< arr.count {
        stack.append(arr[i])
        if arr[i] == ")" {
            if stack.count < 2 {
                return false
            }
            if stack[stack.count - 2] == "(" {
                stack.removeLast(2)
            }
        }
    }

    return stack.isEmpty
}

print(solution("()()"))
print(solution("(())()"))
print(solution(")()("))
print(solution("(()("))
