import UIKit

func reorderSpaces(_ text: String) -> String {
    let totalSpaces = text.filter { $0 == " " }.count
    let words = text.split(separator: " ").map(String.init)
    let wordCount = words.count
    
    if wordCount == 1 {
        return words[0] + String(repeating: " ", count: totalSpaces)
    }
    
    let spaceBetween = totalSpaces / (wordCount - 1)
    let extraSpaces = totalSpaces % (wordCount - 1)
    
    let joined = words.joined(separator: String(repeating: " ", count: spaceBetween))
    return joined + String(repeating: " ", count: extraSpaces)
}
