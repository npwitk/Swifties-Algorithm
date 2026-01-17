import UIKit

func triangleType(_ nums: [Int]) -> String {
    let a = nums[0], b = nums[1], c = nums[2]
    
    if a + b > c && a + c > b && b + c > a {
        if a == b && b == c {
            return "equilateral"
        } else if a == b || b == c || a == c {
            return "isosceles"
        } else if a != b && b != c && a != c {
            return "scalene"
        } else {
            return "none"
        }
        
    } else {
        return "none"
    }
}
