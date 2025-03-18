import UIKit

func partitionLomuto<T: Comparable>(_ a: inout [T],
                                    low: Int,
                                    high: Int) -> Int {
    
    let pivot = a[high]
    
    var i = low
    for j in low..<high {
        if a[j] <= pivot {
            a.swapAt(i, j)
            i += 1
        }
    }
    
    a.swapAt(i, high)
    return i
}

func quicksortLomuto<T: Comparable>(_ a: inout [T],
                                    low: Int, high: Int) {
    if low < high {
        let pivot = partitionLomuto(&a, low: low, high: high)
        quicksortLomuto(&a, low: low, high: pivot - 1)
        quicksortLomuto(&a, low: pivot + 1, high: high)
    }
}

var list = [12, 0, 3, 9, 2, 21, 18, 27, 1, 5, 8, -1, 8]
quicksortLomuto(&list, low: 0, high: list.count - 1)
print(list)
