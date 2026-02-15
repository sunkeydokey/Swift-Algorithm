import Foundation

// [성격 유형 검사하기](https://school.programmers.co.kr/learn/courses/30/lessons/118666)

func solution(_ survey: [String], _ choices: [Int]) -> String {
    var dict: [Character: Int] = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]

    for i in 0 ..< survey.count {
        let first = survey[i].first!
        let second = survey[i].last!

        switch choices[i] {
        case 1:
            dict[first]! += 3
        case 2:
            dict[first]! += 2
        case 3:
            dict[first]! += 1
        case 4:
            continue
        case 5:
            dict[second]! += 1
        case 6:
            dict[second]! += 2
        case 7:
            dict[second]! += 3
        default:
            break
        }
    }

    var result = ""

    if dict["R"]! >= dict["T"]! {
        result.append("R")
    } else {
        result.append("T")
    }

    if dict["C"]! >= dict["F"]! {
        result.append("C")
    } else {
        result.append("F")
    }

    if dict["J"]! >= dict["M"]! {
        result.append("J")
    } else {
        result.append("M")
    }

    if dict["A"]! >= dict["N"]! {
        result.append("A")
    } else {
        result.append("N")
    }

    return result
}
