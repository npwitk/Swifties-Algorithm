import UIKit

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    let evenArray = nums.filter({ $0 % 2 == 0 })
    let oddArray = nums.filter({ $0 % 2 != 0 })
    
    return evenArray + oddArray
}
