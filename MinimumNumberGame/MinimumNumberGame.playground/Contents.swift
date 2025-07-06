import UIKit

func numberGame(_ nums: [Int]) -> [Int] {
    var sortedNums = nums.sorted()
    var arr = [Int]()
    
    while !sortedNums.isEmpty {
        let alicePick = sortedNums.removeFirst()
        let bobPick = sortedNums.removeFirst()
        
        arr.append(bobPick)
        arr.append(alicePick)
    }
    
    return arr
}
