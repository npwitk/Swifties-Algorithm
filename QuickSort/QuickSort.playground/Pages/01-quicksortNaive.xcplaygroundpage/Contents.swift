import UIKit

func quicksortNaive<T: Comparable>(_ a: [T]) -> [T] {
    
  guard a.count > 1 else { // 1
    return a
  }
    
  let pivot = a[a.count / 2] // 2
    
  let less = a.filter { $0 < pivot } // 3
  let equal = a.filter { $0 == pivot }
  let greater = a.filter { $0 > pivot }
    
  return quicksortNaive(less) + equal + quicksortNaive(greater) // 4
}

quicksortNaive([12, 0, 3, 9, 2, 18, 8, 27, 1, 5, 8, -1, 21])
