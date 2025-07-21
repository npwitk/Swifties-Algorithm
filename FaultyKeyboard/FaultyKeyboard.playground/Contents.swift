import UIKit

func finalString(_ s: String) -> String {
    var result = [Character]()
    
    for c in s {
        if c == "i" {
            result.reverse()
        } else {
            result.append(c)
        }
    }
    
    return String(result)
}
