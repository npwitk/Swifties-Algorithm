import UIKit

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var result = Array(repeating: Character(" "), count: s.count)
    let characters = Array(s)

    for i in 0..<s.count {
        result[indices[i]] = characters[i]
    }

    return String(result)
}

restoreString("codeleet", [4,5,6,7,0,2,1,3])
