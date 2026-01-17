import UIKit

func missingNumber(_ nums: [Int]) -> Int {
    let sumTilMax = nums.count * (nums.count + 1) / 2
    return sumTilMax - nums.reduce(0, +)
}

