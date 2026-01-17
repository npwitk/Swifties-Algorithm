import Foundation

func merge(_ intervals: [[Int]]) -> [[Int]] {
    // Edge case
    guard intervals.count > 1 else { return intervals }
    
    // 1. Sort intervals by start time
    let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    
    var result: [[Int]] = []
    var current = sortedIntervals[0]
    
    // 2. Merge overlapping intervals
    for interval in sortedIntervals.dropFirst() {
        let start = interval[0]
        let end = interval[1]
        
        if start <= current[1] {
            // Overlapping → merge
            current[1] = max(current[1], end)
        } else {
            // No overlap → push current and reset
            result.append(current)
            current = interval
        }
    }
    
    // Append last interval
    result.append(current)
    
    return result
}

