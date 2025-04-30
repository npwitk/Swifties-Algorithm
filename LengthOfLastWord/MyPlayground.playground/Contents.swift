import UIKit

func lengthOfLastWord(_ s: String) -> Int {
    
    let separatedList = s.components(separatedBy: " ")

    if let lastWordFiltered = separatedList.filter({ $0 != "" }).last {
        return lastWordFiltered.count
    } else {
        return 0
    }
}

lengthOfLastWord("luffy is still joyboy")
lengthOfLastWord("   fly me   to   the moon  ")
lengthOfLastWord("Hello World")
