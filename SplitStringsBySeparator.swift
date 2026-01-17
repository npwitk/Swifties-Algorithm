import UIKit

func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
    words.flatMap { word in
        word.components(separatedBy: String(separator)).filter { !$0.isEmpty }
    }
}
