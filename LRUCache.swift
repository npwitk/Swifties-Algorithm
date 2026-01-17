import Foundation

class LRUCache {

    // Doubly linked list node
    class Node {
        var key: Int
        var value: Int
        var prev: Node?
        var next: Node?

        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }

    private let capacity: Int
    private var cache: [Int: Node] = [:]

    // Dummy head & tail to simplify edge cases
    private let head = Node(0, 0)
    private let tail = Node(0, 0)

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
        guard let node = cache[key] else {
            return -1
        }
        moveToFront(node)
        return node.value
    }

    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.value = value
            moveToFront(node)
        } else {
            let newNode = Node(key, value)
            cache[key] = newNode
            addToFront(newNode)

            if cache.count > capacity {
                if let lru = removeLRU() {
                    cache[lru.key] = nil
                }
            }
        }
    }

    // MARK: - Doubly Linked List Helpers

    private func addToFront(_ node: Node) {
        node.prev = head
        node.next = head.next
        head.next?.prev = node
        head.next = node
    }

    private func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }

    private func moveToFront(_ node: Node) {
        remove(node)
        addToFront(node)
    }

    private func removeLRU() -> Node? {
        guard let lru = tail.prev, lru !== head else {
            return nil
        }
        remove(lru)
        return lru
    }
}

