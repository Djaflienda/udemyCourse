import Foundation

enum BMIResults: String {
    case greater = "Overweight"
    case middle = "Normal weight"
    case below = "Underweight"
}

func calculateBMI(massInKilos: Double, heightInSantimeters: Double) -> String {
    guard massInKilos > 0 || heightInSantimeters > 0 else {return "Incorrect mass value"}
    //because of people pop up with the height of at least 40sm
    guard heightInSantimeters > 35 else {return "Enter height in santimeters"}
    
    let result: BMIResults
    let calculations = massInKilos / pow(heightInSantimeters/100, 2)
    
    switch calculations {
    case 0..<18.5:
        result = .below
    case 18.5..<25:
        result = .middle
    default:
        result = .greater
    }
    
    return result.rawValue
}

calculateBMI(massInKilos: 78, heightInSantimeters: 1.83)
