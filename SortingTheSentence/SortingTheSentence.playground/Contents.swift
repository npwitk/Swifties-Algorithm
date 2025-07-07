import UIKit

func sortSentence(_ s: String) -> String {
    let words = s.components(separatedBy: " ")
    var sortedWords = Array(repeating: "", count: words.count)
    
    for word in words {
        if let indexChar = word.last,
           let index = Int(String(indexChar)) {
            sortedWords[index - 1] = String(word.dropLast())
        }
    }
    
    return sortedWords.joined(separator: " ")
}
