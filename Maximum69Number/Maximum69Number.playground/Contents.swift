import UIKit

func maximum69Number(_ num: Int) -> Int {
    var chars = Array(String(num))
    
    for i in 0..<chars.count {
        if chars[i] == "6" {
            chars[i] = "9"
            break
        }
    }
    
    return Int(String(chars))!
}
