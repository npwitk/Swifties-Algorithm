import UIKit

func heightChecker(_ heights: [Int]) -> Int {
    let sortedHeights = heights.sorted()
    var notMatchCount: Int = 0
    
    for i in 0..<heights.count {
        if sortedHeights[i] != heights[i] {
            notMatchCount += 1
        }
    }

    return notMatchCount
}
