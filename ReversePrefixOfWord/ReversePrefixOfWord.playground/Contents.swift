import UIKit

func reversePrefix(_ word: String, _ ch: Character) -> String {
    
    guard let index = word.firstIndex(of: ch) else { return word }
    
    let distance = word.distance(from: word.startIndex, to: index)
    let prefix = word.prefix(distance + 1).reversed()
    let suffix = word.dropFirst(distance + 1)

    return String(prefix + suffix)
}



