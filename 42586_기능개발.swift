import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
  var releases = [Int]()
  var stack = [Int]()
  var answer = [Int]()
  
  for index in 0..<progresses.count {
    let progress = progresses[index]
    // (100 - progress) / speed 의 올림값
    let release = (100 - progress - 1) / speeds[index] + 1
    releases.append(release)
  }
  
  while !releases.isEmpty {
    if stack.isEmpty {
      stack.append(releases.removeFirst())
    } else {
      if stack.max()! < releases.first! {
        answer.append(stack.count)
        stack.removeAll()
      } else {
        stack.append(releases.removeFirst())
      }
    }
  }
  answer.append(stack.count)
  return answer
}
