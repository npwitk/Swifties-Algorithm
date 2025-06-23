import UIKit

func countDigits(_ num: Int) -> Int {
    let digits = String(num).compactMap { $0.wholeNumberValue }
    var count = 0
    
    for digit in digits {
        if digit != 0 && num % digit == 0 {
            count += 1
        }
    }
    
    return count
}




