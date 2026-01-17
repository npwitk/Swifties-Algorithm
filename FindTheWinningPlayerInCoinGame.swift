import UIKit

func winningPlayer(_ x: Int, _ y: Int) -> String {
    let turns = min(x, y / 4)
    return turns % 2 == 1 ? "Alice" : "Bob"
}
