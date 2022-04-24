//
//  HeightCard.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct HeightCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        ZStack {
            
            CardBackground()
        
            if model.unit == .metric {
                VStack {
                    CardLabel(title: "Height", caption: "Enter Your Height (CM)")
                    
                    //Slider
                    SliderValue(value: model.heightInCM, withDecimal: false)
                    Slider(value: $model.heightInCM, in: 1...250, step: 1.0)
                        .accentColor(Color(.systemPink))
                        .frame(width: 150)
                
                }
            } else if model.unit == .imperial {
                VStack {
                    CardLabel(title: "Height", caption: "Enter Your Height (Ft & In.)")
                    
                    HStack {
                        VStack {
                            SliderValue(value: model.heightInFt, withDecimal: false)
                            
                            Text("Feet")
                                .font(.caption2)
                                .foregroundColor(Color(.systemGray3))
                                .padding(.top, 10)
                            
                            Slider(value: $model.heightInFt, in: 1...12, step: 1.0)
                                .accentColor(Color(.systemPink))
                                .padding(.top, 15)
                        }
                        .frame(width: 100)
                        
                        
                        VStack {
                            SliderValue(value: model.heightInInch, withDecimal: true)
                            
                            Text("Inches")
                                .font(.caption2)
                                .foregroundColor(Color(.systemGray3))
                                .padding(.top, 10)
                            
                            Slider(value: $model.heightInInch, in: 1...12, step: 0.5)
                                .accentColor(Color(.systemPink))
                                .padding(.top, 15)
                        }
                        .frame(width: 100)
                    }
                }
            }
        }
        .frame(width: 300, height: 500)
    }
}

struct HeightMetricCard_Previews: PreviewProvider {
    static var previews: some View {
        HeightCard()
    }
}
