import UIKit

func isPowerOfTwo(_ n: Int) -> Bool {
    guard n > 0 else {
        return false
    }
    
    return n & (n - 1) == 0
}

isPowerOfTwo(1)
isPowerOfTwo(4)
isPowerOfTwo(16)
isPowerOfTwo(3)
