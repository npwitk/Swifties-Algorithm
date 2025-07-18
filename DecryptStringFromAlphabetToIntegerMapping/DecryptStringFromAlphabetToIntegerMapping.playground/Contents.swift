import UIKit

func freqAlphabets(_ s: String) -> String {
    let letters = Array("abcdefghijklmnopqrstuvwxyz")
    var result = ""
    let chars = Array(s)
    var i = 0
    
    while i < chars.count {
        if i + 2 < chars.count && chars[i + 2] == "#" {
            let num = Int(String(chars[i...i+1]))!
            result.append(letters[num - 1])
            i += 3
        } else {
            let num = Int(String(chars[i]))!
            result.append(letters[num - 1])
            i += 1
        }
    }
    
    return result
}

freqAlphabets("10#11#12")
freqAlphabets("1326#")
