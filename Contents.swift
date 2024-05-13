import Cocoa

// Duplicates
// Challenge: Write a method that removes any duplicates from our linked list

func printLinkedListSimple(_ head: Node?) {
    if head == nil { return }

    var node = head
    print(node!.data)

    while node?.next != nil {
        print(node!.next!.data)
        node = node?.next
    }
}

class Node {
    var data: Int
    var next: Node?

    init(_ data: Int, _ next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

func removeDuplictates(_ head: Node?) {
    // Create a hash table or set to store the unique values
    // Then delete the duplicate as soon as we detect it while walking the list.
    // Algoritm is 0(n).

    var uniques: Set<Int> = Set<Int>()
    var previous: Node? = nil
    var current = head

    while current != nil {
        if uniques.contains(current!.data) {
            previous!.next = current!.next // skip this duplicate
        } else {
            uniques.insert(current!.data)
            previous = current
        }
        current = current!.next

    }
}

let node3 = Node(3)
let node2 = Node(2, node3)
let node1 = Node(1, node2)
node3.next = Node(1)        // duplicate
printLinkedListSimple(node1)
print("===")
removeDuplictates(node1)
printLinkedListSimple(node1)
