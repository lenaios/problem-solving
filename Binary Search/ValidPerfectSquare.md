
[367. Valid Perfect Square](https://github.com/huequad/swift-algorithm/issues/45#issue-1009613600)

1️⃣ while을 빠져나오지 못하는 case가 존재 
```swift
func isPerfectSquare(_ num: Int) -> Bool {
  var start = 1, end = num
  
  while start <= end {
    let pointer = (start + end) / 2
    if pointer * pointer == num {
      return true
    }
    if pointer * pointer >= num {
      end = pointer
    } else {
      start = pointer
    }
  }
  return false
}
```
2️⃣ pointer를 1씩 움직이도록 수정 - timeout
```swift
func isPerfectSquare(_ num: Int) -> Bool {
  var start = 1, end = num
  
  while start <= end {
    let pointer = (start + end) / 2
    if pointer * pointer == num {
      return true
    }
    if pointer * pointer >= num {
      end -= 1
    } else {
      start += 1
    }
  }
  return false
}
```

3️⃣ perfect square는 공식이 있다.
```
This is a math problem：
1 = 1
4 = 1 + 3
9 = 1 + 3 + 5
16 = 1 + 3 + 5 + 7
25 = 1 + 3 + 5 + 7 + 9
36 = 1 + 3 + 5 + 7 + 9 + 11
...

// Runtime: 0 ms, faster than 100.00% of Swift online submissions for Valid Perfect Square.
func isPerfectSquare(_ num: Int) -> Bool {
  var i = 1
  var num = num
  while num > 0 {
    num -= i
    i += 2
  }
  return num == 0
}

```
4️⃣ 1번을 조금만 수정하면 통과한다.
```swift
func isPerfectSquare(_ num: Int) -> Bool {
  var start = 1, end = num
  
  while start <= end {
    let pointer = (start + end) / 2
    if pointer * pointer == num {
      return true
    }
    if pointer * pointer >= num {
      end = pointer - 1
    } else {
      start = pointer + 1
    }
  }
  return false
}
```
