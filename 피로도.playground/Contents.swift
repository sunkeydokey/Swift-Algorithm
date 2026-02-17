import Foundation

// [피로도](https://school.programmers.co.kr/learn/courses/30/lessons/87946)

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    let visited = [Bool](repeating: false, count: dungeons.count)
    return dfs(k: k, dungeons: dungeons, visited: visited, count: 0)
}

func dfs(k: Int, dungeons: [[Int]], visited: [Bool], count: Int) -> Int {
    var result = count
    var copied = visited
    for i in 0 ..< dungeons.count {
        if visited[i] || dungeons[i][0] > k {
            continue
        }

        copied[i] = true
        result = max(
            dfs(
                k: k - dungeons[i][1],
                dungeons: dungeons,
                visited: copied,
                count: count + 1
            ), result
        )
    }

    return result
}

solution(80, [[80, 20], [50, 40], [30, 10]])
