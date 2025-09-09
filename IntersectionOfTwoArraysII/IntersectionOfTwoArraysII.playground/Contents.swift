import UIKit

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var freq1 = [Int: Int]()
    var result = [Int]()
    
    // Count occurrences in nums1
    for num in nums1 {
        freq1[num, default: 0] += 1
    }
    
    // Check against nums2
    for num in nums2 {
        if let count = freq1[num], count > 0 {
            result.append(num)
            freq1[num]! -= 1
        }
    }
    
    return result
}
