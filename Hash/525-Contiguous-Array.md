[525. Contiguous Array](https://leetcode.com/problems/contiguous-array/)

Runtime: 1012 ms, faster than 17.86% of Swift online submissions for Contiguous Array.  
Memory Usage: 16.3 MB, less than 96.43% of Swift online submissions for Contiguous Array.


- 0, 1의 개수가 같은 sub array의 최대 길이를 구하는 문제
- 0일 때 -1, 1일 때 +1로 카운트해서 같은 값이 나왔을 때 0과 1의 개수가 같음을 이용한다. (Hash 사용)
- 카운트가 0이 되면 0과 1의 개수가 같다. (딕셔너리 `[0: -1]`로 초기화)


```swift
func findMaxLength(_ nums: [Int]) -> Int {
  var dict = [0: -1]
  var count = 0
  var maxLength = 0
  
  for (index, value) in nums.enumerated() {
    count += value == 0 ? -1 : 1
    if let idx = dict[count] {
      maxLength = max(maxLength, index - idx)
    } else {
      dict[count] = index
    }
    print(index, maxLength)
  }
  
  return maxLength
}
```
