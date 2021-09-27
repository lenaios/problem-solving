import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
  
  var stay = [Int:Int]()
  
  for stage in stages {
    if var value = stay[stage] {
      value += 1
      stay[stage] = value
    } else {
      stay[stage] = 1
    }
  }
  
  var answer = [Int:Double]()
  for stage in 1...N {
    let total = stay.keys.filter { $0 >= stage }
    .map { stay[$0]! }
    .reduce(0, +)
      
    let fail = stay[stage] ?? 0
    let failure = Double(fail) / Double(total)
    answer[stage] = failure
  }
  
  return answer.keys.sorted().sorted {
      answer[$0]! > answer[$1]!
    }
}
