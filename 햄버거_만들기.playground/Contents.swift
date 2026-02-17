import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var stack: [Int] = []
    var burgers = 0

    for item in ingredient {
        stack.append(item)

        if stack.count >= 4 {
            let part = Array(stack[stack.count - 4 ..< stack.count])
            if part == [1, 2, 3, 1] {
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
                stack.removeLast()
                burgers += 1
            }
        }
    }

    return burgers
}

print(solution([2, 1, 1, 2, 3, 1, 2, 3, 1]))
print(solution([1, 3, 2, 1, 2, 1, 3, 1, 2]))
