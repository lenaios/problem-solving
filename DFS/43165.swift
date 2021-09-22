
import Foundation

var answer = 0
var numbersArr = [Int]()

func solution(_ numbers:[Int], _ target:Int) -> Int {
    numbersArr = numbers
    dfs(0, numbers[0], target)
    dfs(0, -numbers[0], target)
    return answer
}

func dfs(_ depth: Int, _ sum: Int, _ target: Int) {
    if depth == numbersArr.count - 1 {
        if sum == target {
            answer += 1
        }
        return
    }
    dfs(depth + 1, sum + numbersArr[depth + 1], target)
    dfs(depth + 1, sum - numbersArr[depth + 1], target)
}

