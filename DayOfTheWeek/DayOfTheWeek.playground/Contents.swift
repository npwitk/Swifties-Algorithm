import UIKit

func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
    let dateFormat = "EEEE" // get you the full name
    
    let date = DateComponents(calendar: Calendar.current, year: year, month: month, day: day).date!
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = dateFormat
    return dateFormatter.string(from: date)
}

print(dayOfTheWeek(26, 12, 2004))
print(dayOfTheWeek(25, 8, 2006))
print(dayOfTheWeek(1, 11, 2006))
print(dayOfTheWeek(13, 12, 1989))
