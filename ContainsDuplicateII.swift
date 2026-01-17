import UIKit

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var indexMap = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let lastIndex = indexMap[num], i - lastIndex <= k {
            return true
        }
        indexMap[num] = i
    }
    
    return false
}
