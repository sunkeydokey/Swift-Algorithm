import Foundation

// [자연수 뒤집어 배열로 만들기](https://school.programmers.co.kr/learn/courses/30/lessons/12932)

func solution(_ n: Int64) -> [Int] {
    let stringConverted = String(n)

    var array: [Int] = []
    for number in stringConverted {
        array.append(Int(String(number))!)
    }

    return array.reversed()
}
