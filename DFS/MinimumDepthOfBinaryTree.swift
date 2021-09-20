
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        if root?.left == nil {
            return minDepth(root?.right) + 1
        }
        if root?.right == nil {
            return minDepth(root?.left) + 1
        }
        let left = minDepth(root?.left)
        let right = minDepth(root?.right)
        return min(left, right) + 1
    }
}

