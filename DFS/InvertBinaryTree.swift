/*
https://leetcode.com/problems/invert-binary-tree
*/

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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        let node = root
        dfs(node)
        return node
    }
    
    func dfs(_ node: TreeNode?) {
        if node == nil {
            return
        }
        let left = node?.left
        node?.left = node?.right
        node?.right = left
        dfs(node?.left)
        dfs(node?.right)
    }
}

