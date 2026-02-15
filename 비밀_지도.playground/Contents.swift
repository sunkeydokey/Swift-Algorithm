import Foundation

func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    var answer = [String](repeating: "", count: n)

    for i in 0 ..< n {
        let arr1Line = String(arr1[i], radix: 2)
        let arr1LineFullCount = [String](repeating: "0", count: n - arr1Line.count) +
            arr1Line.map { String($0) }
        let arr2Line = String(arr2[i], radix: 2)
        let arr2LineFullCount = [String](repeating: "0", count: n - arr2Line.count) +
            arr2Line.map { String($0) }

        for j in 0 ..< n {
            if arr1LineFullCount[j] == "1" || arr2LineFullCount[j] == "1" {
                answer[i].append("#")
            } else {
                answer[i].append(" ")
            }
        }
    }

    return answer
}

func bitOperatorSolution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    return (0 ..< n).map {
        let binary = String(arr1[$0] | arr2[$0], radix: 2)
        let padded = String(repeating: "0", count: n - binary.count) + binary
        return padded.reduce("") { $0 + ($1 == "0" ? " " : "#") }
    }
}
