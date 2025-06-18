import UIKit

func truncateSentence(_ s: String, _ k: Int) -> String {
    let arrayOfWord = s.components(separatedBy: " ")
    
    return arrayOfWord[0..<k].joined(separator: " ")
}

print(truncateSentence("Hello how are you Contestant", 4))


func truncateSentence2(_ s: String, _ k: Int) -> String {
    let words = s.split(separator: " ")
    return words.prefix(k).joined(separator: " ")
}
