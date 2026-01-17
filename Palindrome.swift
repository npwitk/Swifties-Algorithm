import UIKit

func isPalindrome(word: String) -> Bool {
    let word = word.lowercased().filter { $0.isNumber || $0.isLetter  }
    return word == String(word.reversed())
}

isPalindrome(word: "นอน")
isPalindrome(word: "Sleep")
isPalindrome(word: "Mum")
