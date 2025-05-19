import UIKit

func sortArrayByParityII(_ nums: [Int]) -> [Int] {
    let evenArray = nums.filter({ $0 % 2 == 0 })
    let oddArray = nums.filter({ $0 % 2 != 0 })
    var answerArray = [Int]()
    
    for i in 0..<nums.count / 2 {
        answerArray.append(evenArray[i])
        answerArray.append(oddArray[i])
    }
    
    return answerArray
}
