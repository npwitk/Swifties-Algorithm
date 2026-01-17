import UIKit

func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        word1.joined() == word2.joined()
    }

arrayStringsAreEqual(["ab", "c"], ["a", "bc"])
