import UIKit

func convertDateToBinary(_ date: String) -> String {
    let components = date.components(separatedBy: "-")
    
    let binaryComponents = components.compactMap { component in
        if let intValue = Int(component) {
            return String(intValue, radix: 2)
        }
        return nil
    }
    
    return binaryComponents.joined(separator: "-")
}

convertDateToBinary("2080-02-29") // "100000100000-10-11101"
