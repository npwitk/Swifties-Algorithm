import UIKit

func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
    return words.enumerated().compactMap { index, word in
        word.contains(x) ? index : nil
    }
}

findWordsContaining(["abc","bcd","aaaa","cbc"], "a")
