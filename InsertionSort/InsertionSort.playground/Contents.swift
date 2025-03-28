import UIKit

func insertionSort<Element: Comparable>(_ array: inout [Element]) {
    
    guard array.count >= 2 else {
        return
    }
    
    for current in 1..<array.count {
        for shifting in (1...current).reversed() {
            if array[shifting] < array[shifting - 1] {
                array.swapAt(shifting, shifting - 1)
            } else {
                break
            }
        }
    }
}

var array = [1, 21, 9, 4, 10, 3]
print("Original: \(array)")
insertionSort(&array)
print("Insertion sorted: \(array)")

