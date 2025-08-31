import UIKit

func minimumAverage(_ nums: [Int]) -> Double {
    var averages = [Double]()
    var numsArray = nums.sorted()
    
    for i in 0..<nums.count / 2 {
        let minElement = numsArray.min() ?? 0
        let maxElement = numsArray.max() ?? 0
        
        let addValue = (Double(minElement) + Double(maxElement)) / 2.0
        
        averages.append(addValue)
        
        numsArray.removeFirst()
        numsArray.removeLast()
    }
    
    return averages.min() ?? 0
}
