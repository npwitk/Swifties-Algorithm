import UIKit

/// BRUTE-FORCE (On^2)
func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<nums.count {
        var count = 0
        for j in 0..<nums.count {
            if i != j && nums[j] < nums[i] {
                count += 1
            }
        }
        result.append(count)
    }
    
    return result
}

smallerNumbersThanCurrent([8,1,2,2,3]) // [4,0,1,1,3]
