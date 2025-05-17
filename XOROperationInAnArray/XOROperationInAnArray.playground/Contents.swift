import UIKit

func xorOperation(_ n: Int, _ start: Int) -> Int {
    var array = [Int]()
    var startNumber = start
    var answer: Int = 0
    
    for i in 1...n {
        array.append(startNumber)
        startNumber += 2
    }
    
    for i in 0..<array.count {
        answer ^= array[i]
    }
    
    return answer
}

xorOperation(4, 3)

