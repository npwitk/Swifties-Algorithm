import UIKit

func percentageLetter(_ s: String, _ letter: Character) -> Int {
    let count = s.filter { $0 == letter }.count
    return count * 100 / s.count
}
