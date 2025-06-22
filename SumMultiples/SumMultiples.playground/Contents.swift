import UIKit

func sumOfMultiples(_ n: Int) -> Int {
    return Array(stride(from: 1, through: n, by: 1))
        .filter({ $0.isMultiple(of: 3) || $0.isMultiple(of: 5) || $0.isMultiple(of: 7) })
        .reduce(0, +)
}
