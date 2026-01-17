import UIKit

func findGCD(_ nums: [Int]) -> Int {
    if let max = nums.max(), let min = nums.min() {
        return gcd(max, min)
    } else {
        return -1
    }
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}

