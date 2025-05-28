import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    
    let firstArray = s.sorted()
    let secondArray = t.sorted()
    
    for i in 0..<firstArray.count {
        if firstArray[i] != secondArray[i] {
            return false
        }
    }
    
    return true
}


isAnagram("rat", "car")
