import UIKit

func bubbleSort<Element: Comparable>(_ array: inout [Element]) {
    
    guard array.count >= 2 else { return } // If only one element no need to sort
    
    for end in (1..<array.count).reversed() {
        var swapped = false
        
        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
        }
        
        if !swapped { return }
    }
}

var array =  [2, 3, 1, 9, 4, 7]
print("Original: \(array)")
bubbleSort(&array)
print("Bubble sorted: \(array)")
