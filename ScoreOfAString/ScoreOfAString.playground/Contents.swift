import UIKit

func scoreOfString(_ s: String) -> Int {
    var score = 0
    let characters = Array(s)
    
    for i in 0..<characters.count - 1 {
        let diff = abs(Int(characters[i].asciiValue!) - Int(characters[i + 1].asciiValue!))
        score += diff
    }
    
    return score
}

