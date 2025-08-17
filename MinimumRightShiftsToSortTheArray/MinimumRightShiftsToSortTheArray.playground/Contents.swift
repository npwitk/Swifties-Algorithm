import UIKit

func minimumRightShifts(_ nums: [Int]) -> Int {
    let n = nums.count
    if n <= 1 { return 0 }
    
    var drops = 0
    var dropIndex = -1
    
    for i in 0..<n {
        let j = (i + 1) % n
        if nums[i] > nums[j] {
            drops += 1
            dropIndex = i
            if drops > 1 { return -1 }
        }
    }
    
    if drops == 0 { return 0 }
    
    return n - (dropIndex + 1)
}

