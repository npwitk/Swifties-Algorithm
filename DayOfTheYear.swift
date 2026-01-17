import UIKit

func dayOfYear(_ date: String) -> Int {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    
    if let dateObj = formatter.date(from: date) {
        return Calendar.current.ordinality(of: .day, in: .year, for: dateObj) ?? 0
    }
    
    return 0
}
