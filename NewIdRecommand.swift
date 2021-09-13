import Foundation

func solution(_ new_id: String) -> String {
  let char = ["~","!","@","#","$","%","^","&","*","(",")","=","+","[","{","]","}",":","?",",","<",">","/"]
  var lower = new_id.lowercased()
  
  char.forEach { string in
    if lower.contains(string) {
      lower = lower.replacingOccurrences(of: string, with: "")
    }
  }
  
  while lower.contains("..") {
    lower = removeDoubleDot(lower)
  }
    
  if lower.first == "." {
    lower.removeFirst()
  }
  
  if lower.last == "." {
    lower.removeLast()
  }
  
  if lower.isEmpty || lower == "" {
    lower += "a"
  }
  
  if lower.count > 15 {
    lower = String(lower[lower.startIndex...lower.index(lower.startIndex, offsetBy: 14)])
  }
  
  if lower.last == "." {
    lower.removeLast()
  }
  
  if lower.count < 3 {
    for _ in 0..<(3 - lower.count) {
      lower += String(lower.last!)
    }
  }
  return lower
}

func removeDoubleDot(_ lower: String) -> String {
  var lower = lower
  if lower.contains("..") {
    lower = lower.replacingOccurrences(of: "..", with: ".")
  }
  return lower
}
