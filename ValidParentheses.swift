import UIKit

func isValid(_ s: String) -> Bool {
    if s.count % 2 != 0 { // Edge case
        return false
    }
    
    var stack = [Character]()
    
    for char in s {
        switch char {
        case "(", "[", "{":
            stack.append(char)
        case ")":
            guard stack.popLast() == "(" else { return false }
        case "]":
            guard stack.popLast() == "[" else { return false }
        case "}":
            guard stack.popLast() == "{" else { return false }
        default:
            return false
        }
    }
    
    return stack.isEmpty
}

isValid("{}()[]")
isValid("{}([])")
isValid("{}}([])")
isValid("{{{}}}")
isValid("[][{{{")
