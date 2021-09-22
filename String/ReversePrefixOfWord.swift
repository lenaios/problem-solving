class Solution {
  // 배열을 이용
  func reversePrefix(_ word: String, _ ch: Character) -> String {
    var chars = [Character]()
    var flag = false
    for char in word {
      chars.append(char)
      if char == ch, !flag {
        chars.reverse()
        flag = true
      }
    }
    return chars.map(String.init).reduce("", +)
  }
}

// String.index 활용
func reversePrefix(_ word: String, _ ch: Character) -> String {
  if let index = word.firstIndex(of: ch) {
    let word = word[...index].reversed() + word[word.index(after: index)...]
    return String(word)
  }
  return word
}
