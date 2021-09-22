
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

