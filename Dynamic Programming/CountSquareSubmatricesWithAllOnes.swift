
class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var _matrix = matrix
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if matrix[i][j] == 1, i > 0 && j > 0 {
                    _matrix[i][j] = min(_matrix[i - 1][j], _matrix[i][j - 1], _matrix[i - 1][j - 1]) + _matrix[i][j]
                }
            }
        }
        
        var answer = _matrix.flatMap { $0 }
        return answer.reduce(0) { $0 + $1 }
    }
}

