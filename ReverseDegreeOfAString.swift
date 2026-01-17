import UIKit

func reverseDegree(_ s: String) -> Int {
    var total = 0
    for (index, char) in s.enumerated() {
        if let ascii = char.asciiValue {
            let reversedValue = 26 - Int(ascii - 97) // 97 is Character("a").asciiValue!
            total += reversedValue * (index + 1)
        }
    }
    return total
}
