import Foundation

// [배열 자르기](https://school.programmers.co.kr/learn/courses/30/lessons/120833)

func solution(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int] {
    let sliced = numbers[num1 ... num2]
    let result = Array(sliced)
    return result
}
