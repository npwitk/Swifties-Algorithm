import UIKit

func commonFactors(_ a: Int, _ b: Int) -> Int {
    let low = min(a, b)
    var count = 0
    
    for i in 1...low {
        if a % i == 0 && b % i == 0 {
            count += 1
        }
    }
    
    return count
}
