import UIKit

func reverseWords(_ s: String) -> String {
    let array = s.components(separatedBy: " ")
    var newArray: [String] = []
    
    for i in 0..<array.count {
        newArray.append(String(array[i].reversed()))
    }
    
    return newArray.joined(separator: " ")
}

reverseWords("Mr Ding")
