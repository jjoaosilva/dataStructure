import UIKit

//var list = LinkedList()
//list.count()
//list.append(value: 1)
//list.count()
//list.append(value: 2)
//list.count()
//list.append(value: 3)
//print(list.view())
//try list.remove(position: 2)
//print(list.view())

//var queue = LinkedQueue()
//queue.count()
//queue.push(value: 1)
//queue.count()
//queue.push(value: 2)
//queue.count()
//queue.push(value: 3)
//print(queue.view())
//try _ = queue.pop()
//print(queue.view())
//try _ = queue.pop()
//print(queue.view())
//try _ = queue.pop()
//print(queue.view())
//
//var stack = LinkedStack()
//stack.count()
//stack.push(value: 1)
//stack.count()
//stack.push(value: 2)
//stack.count()
//stack.push(value: 3)
//print(stack.view())
//try _ = stack.pop()
//print(stack.view())
//try _ = stack.pop()
//print(stack.view())
//try _ = stack.pop()
//print(stack.view())

var tree = BinaryTree()
tree.insertNode(with: 10)
tree.insertNode(with: 5)
tree.insertNode(with: 7)
tree.insertNode(with: 12)
tree.insertNode(with: 11)
tree.insertNode(with: 1)
tree.insertNode(with: 13)
tree.insertNode(with: 0)
tree.insertNode(with: 2)
tree.insertNode(with: 14)

tree.printLeaves()
 /*
 Resultado esperado:
             10
          5      12
        1   7  11  13
       0 2           14
 */
