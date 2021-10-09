import Foundation

func solution(_ s:String) -> Int {
  let numbers = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4,
                 "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]
  
  var str = s
  numbers.forEach { (key, value) in
    if str.contains(key) {
      str = str.replacingOccurrences(of: key, with: "\(value)")
    }
  }
  return Int(str)!
}
