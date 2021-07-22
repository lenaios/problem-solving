
// 104. Maximum Depth of Binary Tree
// https://leetcode.com/problems/maximum-depth-of-binary-tree/

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        let left = maxDepth(root?.left)
        let right = maxDepth(root?.right)
        return max(left, right) + 1 
    }
}

