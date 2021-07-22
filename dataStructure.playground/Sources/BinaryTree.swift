import Foundation

public class BinaryTree {
    
    private enum BinaryTreeError: Error {
        case cannotGetValueFromEmptyTree
    }

    private class Node {
        var value: Int?
        var leftNode: Node?
        var rightNode: Node?
        
        init(value: Int?) {
            self.value = value
        }
    }

    private var root: Node?
    private var numberOfNodes: Int

    public init() {
        self.root = nil
        self.numberOfNodes = 0
    }
    
    public func count() -> Int {
        return self.numberOfNodes
    }
    
    public func insertNode(with number: Int) {
        if self.root == nil {
            let newRoot = Node(value: number)
            self.root = newRoot
        } else {
            let root = findRootToInsert(number: number, node: self.root!)
            let newNode = Node(value: number)

            if number < root.value! {
                root.leftNode = newNode
            } else {
                root.rightNode = newNode
            }
        }
        self.numberOfNodes += 1
    }
    
    public func printLeaves() {
        self.findLeaves(root: self.root!)
    }
    
    private func findLeaves(root: Node, leaves: String = "") {
        if self.numberOfNodes > 0 {
            if root.leftNode == nil && root.rightNode == nil {
                print(root.value!)
            } else {
                if let leftNode = root.leftNode {
                    findLeaves(root: leftNode)
                }

                if let rightNode = root.rightNode {
                    findLeaves(root: rightNode)
                }
            }
        } else {
            print("Arvore vazia")
        }
    }

    private func findRootToInsert(number: Int, node: Node) -> Node {
        if number < node.value! {
            if let leftNode = node.leftNode {
                return findRootToInsert(number: number, node: leftNode)
            }
        } else {
            if let rightNode = node.rightNode {
                return findRootToInsert(number: number, node: rightNode)
            }
        }
        return node
    }
}
