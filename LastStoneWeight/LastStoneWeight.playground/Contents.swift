import UIKit

func lastStoneWeight(_ stones: [Int]) -> Int {
    var localStone = stones
    
    while localStone.count > 1 {
        localStone.sort(by: >)
        
        let y = localStone.removeFirst()
        let x = localStone.removeFirst()
        
        if y != x {
            localStone.append(y - x)
        }
    }
    return localStone.first ?? 0
}
