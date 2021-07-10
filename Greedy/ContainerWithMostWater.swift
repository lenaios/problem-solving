/*
https://leetcode.com/problems/container-with-most-water/
*/

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var area = 0
        var a = 0
        var b = height.count - 1
        while a < b {
            let minHeight = min(height[a], height[b])
            let width = b - a
            area = max(minHeight * width, area)
            if height[a] < height[b] {
                a += 1
            } else {
                b -= 1
            }
        }
        return area
    }
}

