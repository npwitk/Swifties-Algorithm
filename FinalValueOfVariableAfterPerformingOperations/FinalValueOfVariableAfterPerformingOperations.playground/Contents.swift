import UIKit

func finalValueAfterOperations(_ operations: [String]) -> Int {
    var x: Int = 0
    
    operations.map({
        if $0 == "++X" || $0 == "X++" {
            x += 1
        } else if $0 == "--X" || $0 == "X--"{
            x -= 1
        }
    })
    
    return x
}
