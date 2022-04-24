//
//  indexModel.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI


class IndexModel: ObservableObject {
    @Published var unit: Units = .metric
    
    @Published var heightInCM: Double = 165
    @Published var weightInKG: Double = 70

    @Published var heightInFt: Double = 5
    @Published var heightInInch: Double = 4
    @Published var weightInLBS: Double = 130
    
    @Published var resultBMI: Double = 0.0
   
    
    
    
    func calculateBMI() {
        
    switch unit {
    
    case Units.metric:
        let heightInMeter = heightInCM / 100
        resultBMI = weightInKG / (heightInMeter * heightInMeter)
        
    case Units.imperial:
        
        let heightToInches = heightInInch + (heightInFt * 12)
        let weightToKG = weightInLBS * 0.45359237
        let heightToMeter = heightToInches / 39.39
        
        resultBMI = weightToKG / (heightToMeter * heightToMeter)

     }
  }
    
    func showSelectedUnit(selected unit: Units) -> String {
        switch unit {
        case .imperial:
            return "I"
        case .metric:
            return "M"
        }
    }
   
    
    var message: String {
        
        switch resultBMI {
        case 0..<16:
            return "Severe Thinness"
        case 16..<17:
            return "Moderate Thinness"
        case 17..<18.5:
            return "Mild Thinness"
        case 18.5..<25:
            return "Normal"
        case 25..<30:
            return "Overweight"
        case 30..<35:
            return "Obese Class I"
        case 35..<40:
            return "Obese Class II"
        case 40...:
            return "Obese Class III"
        default:
            return "Calculation Error"
        }
        
    }
    
    
}
