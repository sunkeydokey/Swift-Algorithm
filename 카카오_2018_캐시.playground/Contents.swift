import Foundation

// [[1차] 캐시](https://school.programmers.co.kr/learn/courses/30/lessons/17680)

func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    var cached: [String] = []
    var result = 0

    if cacheSize == 0 {
        return cities.count * 5
    }

    let lowercased = cities.map { $0.lowercased() }

    for city in lowercased {
        if cached.isEmpty {
            cached.append(city)
            result += 5
            continue
        }
        if cached.contains(city) {
            cached = cached.filter { $0 != city }
            result += 1
        } else {
            result += 5
        }

        cached.append(city)

        if cached.count > cacheSize {
            cached.removeFirst(cached.count - cacheSize)
        }
    }

    return result
}

print(solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"]))
print(solution(3, ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"]))
