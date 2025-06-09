import UIKit


func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    let chars1 = Array(word1)
    let chars2 = Array(word2)
    let maxLength = max(chars1.count, chars2.count)
    
    for i in 0..<maxLength {
        if i < chars1.count {
            result.append(chars1[i])
        }
        if i < chars2.count {
            result.append(chars2[i])
        }
    }
    return result
}

mergeAlternately("ab", "pqrs") //apbqrs
