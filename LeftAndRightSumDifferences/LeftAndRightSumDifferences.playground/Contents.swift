import UIKit

func leftRightDifference(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var leftSum = [Int](repeating: 0, count: n)
    var rightSum = [Int](repeating: 0, count: n)
    var answer = [Int](repeating: 0, count: n)
    
    // leftSum
    for i in 1..<n {
        leftSum[i] = leftSum[i - 1] + nums[i - 1]
    }
    
    // rightSum
    for i in stride(from: n - 2, through: 0, by: -1) {
        rightSum[i] = rightSum[i + 1] + nums[i + 1]
    }
    
    // answer
    for i in 0..<n {
        answer[i] = abs(leftSum[i] - rightSum[i])
    }
    
    return answer
}
