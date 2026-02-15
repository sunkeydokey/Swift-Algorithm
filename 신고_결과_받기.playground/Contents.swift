import Foundation

// [신고 결과 받기](https://school.programmers.co.kr/learn/courses/30/lessons/92334)

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    var banned = Set<String>()
    let reportedDict = Set(report).reduce(into: [String: [String]]()) { dict, report in
        let split = report.split(separator: " ")
        dict[String(split[1]), default: []].append(String(split[0]))

        if dict[String(split[1]), default: []].count >= k {
            banned.insert(String(split[1]))
        }
    }

    var mailed: [String: Int] = [:]
    for id in banned {
        for reporter in reportedDict[id, default: []] {
            mailed[reporter, default: 0] += 1
        }
    }

    var result: [Int] = []
    for id in id_list {
        result.append(mailed[id, default: 0])
    }

    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
