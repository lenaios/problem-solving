/*
https://programmers.co.kr/learn/courses/30/lessons/42862
여벌이 있는데 잃어버린 학생은 먼저 제외
*/

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
  
    var _lost = Set(lost).subtracting(reserve)
    let _reserve = Set(reserve).subtracting(lost)
    for res in _reserve {
        if _lost.contains(res - 1) {
            _lost.remove(res - 1)
        } else if _lost.contains(res + 1) {
            _lost.remove(res + 1)
        }
    }
    return n - _lost.count
}

