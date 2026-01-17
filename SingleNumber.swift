import UIKit

func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    
    for num in nums {
        result ^= num
    }
    
    return result
}

singleNumber([2, 3, 2, 4, 3])
