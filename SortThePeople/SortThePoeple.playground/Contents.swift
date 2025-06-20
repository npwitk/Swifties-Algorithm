import UIKit

func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
    return zip(names, heights)
        .sorted { $0.1 > $1.1 } // sort by height descending
        .map { $0.0 } // return just the names
}

sortPeople(["Mary","John","Emma"], [180,165,170])
