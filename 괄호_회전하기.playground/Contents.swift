import Foundation

// [괄호 회전하기](https://school.programmers.co.kr/learn/courses/30/lessons/76502)

func solution(_ s: String) -> Int {
    var result = 0
    for i in 0 ..< s.count {
        var rotated = String(s.suffix(s.count - i) + s.prefix(i))

        while rotated.contains("()") || rotated.contains("[]") || rotated.contains("{}") {
            rotated = rotated.replacingOccurrences(of: "()", with: "")
            rotated = rotated.replacingOccurrences(of: "[]", with: "")
            rotated = rotated.replacingOccurrences(of: "{}", with: "")
        }
        if rotated.isEmpty {
            result += 1
        }
    }
    return result
}

print(solution("[](){}"))
print(solution("}]()[{"))
print(solution("[)(]"))
print(solution("}}}"))
