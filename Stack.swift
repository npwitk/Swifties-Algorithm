import UIKit

public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() { }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
}

extension Stack: CustomDebugStringConvertible {
    
    public var debugDescription: String {
    """
    ----top----
    \(storage.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
    }
}



var stack = Stack<Int>()
stack.push(1)
stack.push(9)
stack.push(8)
stack.push(7)

print(stack)

if let poppedElement = stack.pop() {
    assert(7 == poppedElement)
    print("Popped: \(poppedElement)")
}

print(stack)

