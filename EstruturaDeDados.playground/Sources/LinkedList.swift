import Foundation

public class LinkedList {
    
    private enum LinkedListError: Error {
        case indexOutOfRange
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
    
    public func view() -> String {
        if numberOfNodes == 0 {
            return "[]"
        } else {
            return "[\(self.getValueToPrint(node: self.head!))"
        }
    }

    public func append(value: Int) {
        if numberOfNodes == 0 {
            self.head = Node(value: value, next: nil)
        } else {
            var auxNode = self.head
            while auxNode?.next != nil {
                auxNode = auxNode?.next
            }
            auxNode?.next = Node(value: value, next: nil)
        }
        self.numberOfNodes += 1
    }

    public func get(position: Int) throws -> Int {
        if position >= numberOfNodes || position < 0 {
            throw LinkedListError.indexOutOfRange
        }
        var node = self.head!
        for _ in 0..<position {
            node = node.next!
        }
        return node.value!
    }

    public func remove(position: Int) throws {
        if position >= numberOfNodes || position < 0 {
            throw LinkedListError.indexOutOfRange
        }
        if position == 0 {
            head = head?.next
        } else {
            var previousNode = self.head!
            for _ in 0..<(position-1) {
                previousNode = previousNode.next!
            }
            previousNode.next = previousNode.next?.next
        }
        self.numberOfNodes -= 1
    }

    private func getValueToPrint(node: Node) -> String {
        if let nextNode = node.next {
            return "\(node.value!), \(self.getValueToPrint(node: nextNode))"
        }
        return "\(node.value!)]"
    }
    
}
