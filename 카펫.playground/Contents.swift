import Foundation

// [카펫](https://school.programmers.co.kr/learn/courses/30/lessons/42842)

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let size = brown + yellow
    for i in 1 ... size {
        let width = i
        let height = size / i
        if size % i == 0, width >= height {
            if (width - 2) * (height - 2) == yellow {
                return [i, size / i]
            }
        }
    }
    return []
}
