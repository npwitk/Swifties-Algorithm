import UIKit

func detectCapitalUse(_ word: String) -> Bool {
    return word == word.uppercased() || word == word.lowercased() || word == word.prefix(1).uppercased() + word.dropFirst().lowercased()
}

detectCapitalUse("USA")
detectCapitalUse("leetcode")
detectCapitalUse("Google")
detectCapitalUse("Apple Is A Company")
