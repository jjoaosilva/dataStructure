import Foundation

public class LinkedStack {
    
    private enum LinkedStackError: Error {
        case cannotGetValueFromEmptyStack
    }

    private class Node {
        var value: Int?
        var next: Node?
        
        init(value: Int?, next: Node?) {
            self.value = value
            self.next = next
        }
    }

    private var head: Node?
    private var numberOfNodes: Int

    public init() {
        self.head = nil
        self.numberOfNodes = 0
    }
    
    public func count() -> Int {
        return self.numberOfNodes
    }
    
    public func push(value: Int) {
        if numberOfNodes == 0 {
            self.head = Node(value: value, next: nil)
        } else {
            let newNode = Node(value: value, next: self.head)
            self.head = newNode
        }
        self.numberOfNodes += 1
    }
    
    public func pop() throws -> Int {
        if numberOfNodes == 0 {
            throw LinkedStackError.cannotGetValueFromEmptyStack
        }
        let next = head?.next
        let popValue = head!.value!
        self.head = next
        self.numberOfNodes -= 1
        return popValue
    }

    public func view() -> String {
        if numberOfNodes == 0 {
            return "[]"
        } else {
            return "[\(self.getValueToPrint(node: self.head!))"
        }
    }
    
    private func getValueToPrint(node: Node) -> String {
        if let nextNode = node.next {
            return "\(node.value!), \(self.getValueToPrint(node: nextNode))"
        }
        return "\(node.value!)]"
    }
}
