import UIKit

func isPowerOfFour(_ n: Int) -> Bool {
    var n = n
    
    if n <= 0 {
        return false
    } else {
        while (n != 1) {
            if (n % 4 != 0) {
                return false;
            }
            n = n / 4;
        }
        return true;
    }
}
