import Foundation

// [머쓱이보다 키 큰 사람](https://school.programmers.co.kr/learn/courses/30/lessons/120585)

func solution(_ array: [Int], _ height: Int) -> Int {
    return array.filter { $0 > height }.count
}
