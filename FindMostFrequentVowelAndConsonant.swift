import UIKit

func maxFreqSum(_ s: String) -> Int {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    var vowelFreq: [Character: Int] = [:]
    var consonantFreq: [Character: Int] = [:]
    
    for char in s {
        if char.isLetter {
            if vowels.contains(char) {
                vowelFreq[char, default: 0] += 1
            } else {
                consonantFreq[char, default: 0] += 1
            }
        }
    }
    
    let maxVowel = vowelFreq.values.max() ?? 0
    let maxConsonant = consonantFreq.values.max() ?? 0
    
    return maxVowel + maxConsonant
}

maxFreqSum("successes")
