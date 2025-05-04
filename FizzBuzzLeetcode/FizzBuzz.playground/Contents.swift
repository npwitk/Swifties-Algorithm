import UIKit

func fizzBuzz(_ n: Int) -> [String] {
    var array = [String]()
    for i in 1...n {
        var value = ""
        
        if (i % 3 == 0) && (i % 5 == 0) {
            value = "FizzBuzz"
        } else if (i % 5 == 0) {
            value = "Buzz"
        } else if (i % 3 == 0) {
            value = "Fizz"
        } else {
            value = String(i)
        }
        
        array.append(value)
    }
    
    return array
}

print(fizzBuzz(3))
print(fizzBuzz(15))
