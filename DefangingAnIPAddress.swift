import UIKit

func defangIPaddr(_ address: String) -> String {
    address.replacingOccurrences(of: ".", with: "[.]")
}
