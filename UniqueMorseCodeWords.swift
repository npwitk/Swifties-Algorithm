import UIKit

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let morseCodes = [
        ".-","-...","-.-.","-..",".","..-.","--.","....","..",
        ".---","-.-",".-..","--","-.","---",".--.","--.-",".-.",
        "...","-","..-","...-",".--","-..-","-.--","--.."
    ]
    
    var transformations = Set<String>()
    
    for word in words {
        let morseWord = word.map { char in
            morseCodes[Int(char.asciiValue! - Character("a").asciiValue!)]
        }.joined()
        
        transformations.insert(morseWord)
    }
    
    return transformations.count
}


