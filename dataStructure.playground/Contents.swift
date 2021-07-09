import UIKit

var list = LinkedList()
list.count()
list.append(value: 1)
list.count()
list.append(value: 2)
list.count()
list.append(value: 3)
print(list.view())
try list.remove(position: 2)
print(list.view())
