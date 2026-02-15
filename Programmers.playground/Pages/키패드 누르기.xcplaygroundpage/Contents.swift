//: [Previous](@previous)

import Foundation

// [키패드 누르기](https://school.programmers.co.kr/learn/courses/30/lessons/67256)

func solution(_ numbers: [Int], _ hand: String) -> String {
    var left = (x: -1, y: 0)
    var right = (x: 1, y: 0)

    var result = ""

    for number in numbers {
        switch number {
        case 1:
            left = (x: -1, y: 3)
            result.append("L")
        case 4:
            left = (x: -1, y: 2)
            result.append("L")
        case 7:
            left = (x: -1, y: 1)
            result.append("L")
        case 3:
            right = (x: 1, y: 3)
            result.append("R")
        case 6:
            right = (x: 1, y: 2)
            result.append("R")
        case 9:
            right = (x: 1, y: 1)
            result.append("R")
        case 2:
            let goal = (x: 0, y: 3)
            let leftMove = abs(goal.x - left.x) + abs(goal.y - left.y)
            let rightMove = abs(goal.x - right.x) + abs(goal.y - right.y)
            if leftMove == rightMove {
                if hand == "right" {
                    right = goal
                    result.append("R")
                } else {
                    left = goal
                    result.append("L")
                }
            } else if leftMove < rightMove {
                left = goal
                result.append("L")
            } else {
                right = goal
                result.append("R")
            }
        case 5:
            let goal = (x: 0, y: 2)
            let leftMove = abs(goal.x - left.x) + abs(goal.y - left.y)
            let rightMove = abs(goal.x - right.x) + abs(goal.y - right.y)
            if leftMove == rightMove {
                if hand == "right" {
                    right = goal
                    result.append("R")
                } else {
                    left = goal
                    result.append("L")
                }
            } else if leftMove < rightMove {
                left = goal
                result.append("L")
            } else {
                right = goal
                result.append("R")
            }
        case 8:
            let goal = (x: 0, y: 1)
            let leftMove = abs(goal.x - left.x) + abs(goal.y - left.y)
            let rightMove = abs(goal.x - right.x) + abs(goal.y - right.y)
            if leftMove == rightMove {
                if hand == "right" {
                    right = goal
                    result.append("R")
                } else {
                    left = goal
                    result.append("L")
                }
            } else if leftMove < rightMove {
                left = goal
                result.append("L")
            } else {
                right = goal
                result.append("R")
            }
        case 0:
            let goal = (x: 0, y: 0)
            let leftMove = abs(goal.x - left.x) + abs(goal.y - left.y)
            let rightMove = abs(goal.x - right.x) + abs(goal.y - right.y)
            if leftMove == rightMove {
                if hand == "right" {
                    right = goal
                    result.append("R")
                } else {
                    left = goal
                    result.append("L")
                }
            } else if leftMove < rightMove {
                left = goal
                result.append("L")
            } else {
                right = goal
                result.append("R")
            }
        default:
            break
        }
    }

    return result
}

//: [Next](@next)
