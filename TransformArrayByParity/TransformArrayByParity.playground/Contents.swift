import UIKit

func transformArray(_ nums: [Int]) -> [Int] {
    var newArray = [Int]()
    
    nums.map({
        if $0 % 2 == 0 {
            newArray.append(0)
        } else {
            newArray.append(1)
        }
    })
    
    return newArray.sorted()
}

transformArray([4,3,2,1])
