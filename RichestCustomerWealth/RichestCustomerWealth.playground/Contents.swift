import UIKit

func maximumWealth(_ accounts: [[Int]]) -> Int {
    accounts.map { $0.reduce(0, +) }.max() ?? 0
}
