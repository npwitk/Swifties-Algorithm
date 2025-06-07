import UIKit

func isPalindrome(_ s: String) -> Bool {
    let filtered = s.lowercased().filter { $0.isLetter || $0.isNumber }
    return filtered == String(filtered.reversed())
}
