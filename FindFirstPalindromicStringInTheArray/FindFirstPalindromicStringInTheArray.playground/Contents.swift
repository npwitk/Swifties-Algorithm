import UIKit

func firstPalindrome(_ words: [String]) -> String {
    if let answer = words.filter({ String($0) == String($0.reversed()) }).first {
        return answer
    } else {
        return ""
    }
}

func firstPalindrome2(_ words: [String]) -> String {
    words.first { $0 == String($0.reversed()) } ?? ""
}
