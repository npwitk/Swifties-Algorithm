import UIKit

func convertTemperature(_ celsius: Double) -> [Double] {
    return [celsius + 273.15, celsius * 1.80 + 32]
}

convertTemperature(36.50)
