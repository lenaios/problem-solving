import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
  
  var buffer = [String: [[Int]]]()
  var sum = [String: Int]()
  
  for index in 0..<genres.count {
    if var value = buffer[genres[index]] {
      value.append([plays[index],index])
      buffer[genres[index]] = value
      sum[genres[index]]! += plays[index]
    } else {
      buffer[genres[index]] = [[plays[index],index]]
      sum[genres[index]] = plays[index]
    }
  }
  
  var answer = [Int]()
  let sorted = sum.sorted { $0.value > $1.value }
  
  for sort in sorted {
    buffer[sort.key]!.sort { arr1, arr2 in
      arr1[0] > arr2[0]
    }
    buffer[sort.key]!.prefix(2).forEach {
      answer.append($0[1])
    }
  }
  
  return answer
}

let genres = ["classic", "pop", "classic", "classic", "pop"]
let plays = [500, 600, 150, 800, 2500]
print(solution(genres, plays))

// ["classic": [[800, 3], [500, 0], [150, 2]], "pop": [[2500, 4], [600, 1]]]
