import UIKit

func smallestEvenMultiple(_ n: Int) -> Int {
    return (2 * n) / gcd(2, n)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}
