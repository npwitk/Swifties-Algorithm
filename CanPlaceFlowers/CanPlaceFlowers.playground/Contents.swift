import UIKit

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = flowerbed
    var count = 0
    
    for i in 0..<flowerbed.count {
        if flowerbed[i] == 0 {
            let emptyLeft = (i == 0 || flowerbed[i - 1] == 0)
            let emptyRight = (i == flowerbed.count - 1 || flowerbed[i + 1] == 0)
            
            if emptyLeft && emptyRight {
                flowerbed[i] = 1
                count += 1
                if count >= n {
                    return true
                }
            }
        }
    }
    
    return count >= n
}

canPlaceFlowers([1,0,0,0,1], 1)
canPlaceFlowers([1,0,0,0,1], 2)
