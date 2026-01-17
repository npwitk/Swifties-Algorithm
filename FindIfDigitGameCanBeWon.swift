import UIKit

func canAliceWin(_ nums: [Int]) -> Bool {
    var singleDigitSum = 0
    var doubleDigitSum = 0
    
    for num in nums {
        if num < 10 {
            singleDigitSum += num
        } else if num < 100 {
            doubleDigitSum += num
        }
    }
    
    let totalSum = nums.reduce(0, +)
    
    if singleDigitSum > totalSum - singleDigitSum {
        return true
    }
    
    if doubleDigitSum > totalSum - doubleDigitSum {
        return true
    }
    
    return false
}

canAliceWin([1,2,3,4,5,14]) // TRUE
canAliceWin([1,2,3,4,10]) // FALSE
