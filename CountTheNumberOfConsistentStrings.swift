import UIKit

func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    let allowedSet = Set(allowed)
    var count = 0
    
    for word in words {
        if Set(word).isSubset(of: allowedSet) {
            count += 1
        }
    }
    
    return count
}
