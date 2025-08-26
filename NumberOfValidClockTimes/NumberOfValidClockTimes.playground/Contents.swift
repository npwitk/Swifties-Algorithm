import UIKit

func countTime(_ time: String) -> Int {
    let chars = Array(time)
    var hours = 0
    var minutes = 0
    
    // Count possible hours
    if chars[0] == "?" && chars[1] == "?" {
        hours = 24 // 00–23
    } else if chars[0] == "?" {
        // ?X
        if chars[1] <= "3" {
            hours = 3 // 0,1,2
        } else {
            hours = 2 // 0,1
        }
    } else if chars[1] == "?" {
        // X?
        if chars[0] == "2" {
            hours = 4 // 20–23
        } else {
            hours = 10 // 00–19
        }
    } else {
        // Fully fixed
        let h = Int(String(chars[0...1]))!
        hours = (h < 24) ? 1 : 0
    }
    
    // Count possible minutes
    if chars[3] == "?" && chars[4] == "?" {
        minutes = 60 // 00–59
    } else if chars[3] == "?" {
        // ?X (0–5 possible)
        minutes = 6
    } else if chars[4] == "?" {
        // X? (0–9 possible)
        minutes = 10
    } else {
        // Fixed
        let m = Int(String(chars[3...4]))!
        minutes = (m < 60) ? 1 : 0
    }
    
    return hours * minutes
}

