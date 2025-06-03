import UIKit

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result = [Bool]()
    let maxCandies = candies.max() ?? 0
    
    for i in 0..<candies.count {
        if (candies[i] + extraCandies) >= maxCandies {
            result.append(true)
        } else {
            result.append(false)
        }
    }
    
    return result
}

func kidsWithCandies2(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let maxCandies = candies.max() ?? 0
    return candies.map { $0 + extraCandies >= maxCandies }
}

kidsWithCandies([2,3,5,1,3], 3)
kidsWithCandies2([2,3,5,1,3], 3)
