[46. Permutations](https://leetcode.com/problems/permutations/)

dfs + swap으로 순열 구하기

```swift
class Solution {
  func permute(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    var nums = nums
    perm(0, &nums, &result)
  return result
}

  func perm(_ first: Int, _ nums: inout [Int], _ result: inout [[Int]]) {
    if first == nums.count {
      result.append(nums)
      return
    }
    for i in first..<nums.count {
      nums.swapAt(i, first)
      perm(first + 1, &nums, &result)
      nums.swapAt(i, first)
    }
  }
}
```
