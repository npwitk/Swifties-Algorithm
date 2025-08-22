import UIKit

func numberOfSpecialChars(_ word: String) -> Int {
    var lowerSet = Set<Character>()
    var upperSet = Set<Character>()
    
    for ch in word {
        if ch.isLowercase {
            lowerSet.insert(ch)
        } else if ch.isUppercase {
            upperSet.insert(Character(ch.lowercased()))
        }
    }
    
    return lowerSet.intersection(upperSet).count
}
