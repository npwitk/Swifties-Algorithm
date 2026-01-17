import UIKit

func findLucky(_ arr: [Int]) -> Int {
    var frequency: [Int: Int] = [:]
    var result = -1
    
    for num in arr {
        frequency[num, default: 0] += 1
    }
    
    for (num, freq) in frequency {
        if num == freq {
            result = max(result, num)
        }
    }
    
    return result
}
