import UIKit

func sumOfTheDigitsOfHarshadNumber(_ x: Int) -> Int {
    let sumOfDigits = String(x).compactMap { $0.wholeNumberValue }.reduce(0, +)
    return x % sumOfDigits == 0 ? sumOfDigits : -1
}

sumOfTheDigitsOfHarshadNumber(18) // 9
sumOfTheDigitsOfHarshadNumber(23) // -1
