
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
    var queue: [Int] = [0]
    func bstToGst(_ root: TreeNode?) -> TreeNode? {
        dfs(root)
        return root
    }
    
    func dfs(_ node: TreeNode?) {
        if node == nil { return }
        dfs(node?.right)
        node!.val += queue.removeFirst()
        queue.append(node!.val)
        dfs(node?.left)
    }
}

