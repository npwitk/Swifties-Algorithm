import UIKit

func isValid(_ word: String) -> Bool {
    guard word.count >= 3 else { return false }
    
    let vowels = Set("aeiouAEIOU")
    let letters = Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let digits = Set("0123456789")
    
    var hasVowel = false
    var hasConsonant = false
    
    for char in word {
        if !letters.contains(char) && !digits.contains(char) {
            return false
        }
        
        if letters.contains(char) {
            if vowels.contains(char) {
                hasVowel = true
            } else {
                hasConsonant = true
            }
        }
    }
    
    return hasVowel && hasConsonant
}
