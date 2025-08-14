import UIKit

func largestGoodInteger(_ num: String) -> String {
    let chars = Array(num)
    var maxGood: Character? = nil
    
    for i in 0..<(chars.count - 2) {
        if chars[i] == chars[i+1], chars[i] == chars[i+2] {
            if let currentMax = maxGood {
                if chars[i] > currentMax {
                    maxGood = chars[i]
                }
            } else {
                maxGood = chars[i]
            }
        }
    }
    
    if let maxChar = maxGood {
        return String(repeating: maxChar, count: 3)
    }
    return ""
}
