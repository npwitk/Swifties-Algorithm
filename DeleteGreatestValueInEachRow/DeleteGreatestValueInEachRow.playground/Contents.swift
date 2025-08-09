import UIKit

func deleteGreatestValue(_ grid: [[Int]]) -> Int {
    var sortedGrid = grid.map { $0.sorted() }
    let rows = sortedGrid.count
    let cols = sortedGrid[0].count
    var answer = 0
    
    for col in (0..<cols) {
        var currentMax = 0
        for row in 0..<rows {
            currentMax = max(currentMax, sortedGrid[row][col])
        }
        answer += currentMax
    }
    
    return answer
}
