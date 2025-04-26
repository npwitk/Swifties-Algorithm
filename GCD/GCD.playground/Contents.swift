import UIKit

func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}

print(gcd(52, 39))
print(gcd(228, 36))
print(gcd(10, 2))
