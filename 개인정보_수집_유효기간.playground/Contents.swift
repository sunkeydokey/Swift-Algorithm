import Foundation

// [개인정보 수집 유효기간](https://school.programmers.co.kr/learn/courses/30/lessons/150370)

func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    var dict: [String: Int] = [:]
    for term in terms {
        let split = Array(term.split(separator: " "))
        dict[String(split.first!)] = Int(String(split.last!))
    }

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy.MM.dd"
    let todayDate = dateFormatter.date(from: today)

    var result: [Int] = []
    for i in 0 ..< privacies.count {
        let split = Array(privacies[i].split(separator: " "))
        let dateString = split[0]
        var dateComponents = DateComponents()
        dateComponents.month = dict[String(split[1])]
        let privacy = dateFormatter.date(from: String(dateString))
        let monthPassed = Calendar.current.date(
            byAdding: dateComponents,
            to: privacy!
        )!

        if monthPassed.timeIntervalSince(todayDate!) <= 0 {
            result.append(i + 1)
        }
    }

    return result
}
