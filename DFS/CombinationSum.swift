
/* 
https://leetcode.com/problems/combination-sum/ 
*/

class Solution {
  var results = [[Int]]()
  var sum = 0

  func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    let candidate = candidates.sorted()

    for i in 0..<candidate.count {
      sum = candidate[i]
      var comb = [candidate[i]]
      dfs(i, target, candidate, &comb)
    }

    return results
  }

  func dfs(_ index: Int, _ target: Int, _ candidate: [Int], _ comb: inout [Int]) {
    if sum == target {
      results.append(comb)
      return
    }
    for j in index..<candidate.count {
      if sum + candidate[j] <= target {
        sum += candidate[j]
        comb.append(candidate[j])
        dfs(j, target, candidate, &comb)
        sum -= comb.removeLast()
      }
    }
  }
}
