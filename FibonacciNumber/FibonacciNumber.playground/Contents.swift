import UIKit

func fib(_ n: Int) -> Int {
    if (n == 0) {
        return 0
    } else if (n == 1) {
        return 1
    }
    
    return fib(n-1) + fib(n-2)
}

fib(2)
fib(4)
