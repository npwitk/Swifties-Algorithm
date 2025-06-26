import UIKit

func getSneakyNumbers(_ nums: [Int]) -> [Int] {
    var count = [Int: Int]()
    var duplicates = [Int]()
    
    for num in nums {
        count[num, default: 0] += 1
        if count[num] == 2 {
            duplicates.append(num)
        }
    }
    
    return duplicates
}



