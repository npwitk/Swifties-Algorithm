import UIKit

func findRelativeRanks(_ score: [Int]) -> [String] {
    let sortedScores = score.sorted(by: >)
    var rankDict: [Int: String] = [:]
    
    for (index, s) in sortedScores.enumerated() {
        switch index {
        case 0:
            rankDict[s] = "Gold Medal"
        case 1:
            rankDict[s] = "Silver Medal"
        case 2:
            rankDict[s] = "Bronze Medal"
        default:
            rankDict[s] = "\(index + 1)"
        }
    }
    
    var result: [String] = []
    for s in score {
        result.append(rankDict[s]!)
    }
    
    return result
}
