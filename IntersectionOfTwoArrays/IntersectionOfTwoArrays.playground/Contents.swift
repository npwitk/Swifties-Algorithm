import UIKit

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let setNums1 = Set(nums1)
    let setNums2 = Set(nums2)
    return Array(setNums1.intersection(setNums2))
}
