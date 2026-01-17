import UIKit

func differenceOfSums(_ n: Int, _ m: Int) -> Int {
    let num1 = Array(stride(from: 1, through: n, by: 1)).filter({ $0 % m != 0}).reduce(0, +)
    let num2 = Array(stride(from: 1, through: n, by: 1)).filter({ $0 % m == 0}).reduce(0, +)
    
    return num1 - num2
}


