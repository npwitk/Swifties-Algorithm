import UIKit

func isBalanced(_ num: String) -> Bool {
    let digits = num.compactMap { $0.wholeNumberValue }
    var evenSum = 0
    var oddSum = 0
    
    for (index, digit) in digits.enumerated() {
        if index % 2 == 0 {
            evenSum += digit
        } else {
            oddSum += digit
        }
    }
    
    return evenSum == oddSum
}
