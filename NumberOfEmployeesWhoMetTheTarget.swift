import UIKit

func numberOfEmployeesWhoMetTarget(_ hours: [Int], _ target: Int) -> Int {
    hours.filter({ $0 >= target }).count
}

numberOfEmployeesWhoMetTarget([0,1,2,3,4], 2) // 3
