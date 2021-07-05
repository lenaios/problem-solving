
/*
https://programmers.co.kr/learn/courses/30/lessons/42840
*/

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one = [1, 2, 3, 4, 5]
    let two = [2, 1, 2, 3, 2, 4, 2, 5]
    let three = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    let students = [one, two, three]
    var grades = [Int: Int]()
    var answer = [Int]()
    
    grades[1] = grading(one, answers)
    grades[2] = grading(two, answers)
    grades[3] = grading(three, answers)
    let max = grades.values.max()
    
    for (key, value) in grades {
        if value == max {
            answer.append(key)
        }
    }
    return answer.sorted()
}

func grading(_ numbers: [Int], _ answers:[Int]) -> Int {
    var count = 0
    for (index, answer) in answers.enumerated() {
        let number = numbers[index % numbers.count]
        if answer == number {
            count += 1
        }
    }
    return count
}

