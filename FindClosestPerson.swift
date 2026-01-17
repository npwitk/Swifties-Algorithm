import UIKit

func findClosest(_ x: Int, _ y: Int, _ z: Int) -> Int {
    let firstAway = abs(z - x)
    let secondAway = abs(z - y)
    
    if firstAway > secondAway {
        return 2
    } else if firstAway < secondAway {
        return 1
    } else {
        return 0
    }
}
