import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = dict[complement] {
            return [complementIndex, index]
        }
        dict[num] = index
    }
    return []
}

print(twoSum([2, 5, 3, 7, 1], 10))
