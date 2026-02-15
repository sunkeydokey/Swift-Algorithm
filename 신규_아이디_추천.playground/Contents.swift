import Foundation

// [신규 아이디 추천](https://school.programmers.co.kr/learn/courses/30/lessons/72410)

func solution(_ new_id: String) -> String {
    let lowercased = new_id.lowercased()
    let forbiddenRemoved = lowercased.filter {
        "qwertyuiopasdfghjklzxcvbnm1234567890-_.".contains($0)
    }

    var processed = forbiddenRemoved
    while processed.contains("..") {
        processed = processed.replacingOccurrences(of: "..", with: ".")
    }

    while processed.hasPrefix(".") || processed.hasSuffix(".") {
        processed = processed.trimmingCharacters(in: CharacterSet(charactersIn: "."))
    }

    let emptyChecked = processed.isEmpty ? "a" : processed
    let longIdProcessed = emptyChecked.count > 15 ?
        String(emptyChecked.prefix(15))
        .trimmingCharacters(in: CharacterSet(charactersIn: "."))
        : emptyChecked

    var result = ""
    if longIdProcessed.count <= 2 {
        let last = longIdProcessed.last!

        result = longIdProcessed
        while result.count < 3 {
            result.append(last)
        }
    } else {
        result = longIdProcessed
    }

    return result
}
