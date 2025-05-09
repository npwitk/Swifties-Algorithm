import UIKit

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    
    let firstHalf = Array(nums[0..<n])
    let secondHalf = Array(nums[n..<n*2])
    var newArray = [Int]()
    
    for i in 0..<firstHalf.count {
        newArray.append(firstHalf[i])
        newArray.append(secondHalf[i])
    }
    
    return newArray
}

shuffle([2,5,1,3,4,7], 3)

