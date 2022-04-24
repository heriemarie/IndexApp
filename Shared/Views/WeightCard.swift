//
//  WeightCard.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct WeightCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {

        ZStack {
            
            CardBackground()
        
            VStack {
                
                if model.unit == .metric {
                    
                    CardLabel(title: "Weight", caption: "Enter Your Weight (KG)" )
              
                    VStack {
                        SliderValue(value: model.weightInKG, withDecimal: false)
                        Slider(value: $model.weightInKG, in: 1...250, step: 1.0)
                            .accentColor(Color(.systemPink))
                    }
                    .frame(width: 150)
                    
                } else if model.unit == .imperial {
                    
                    CardLabel(title: "Weight", caption: "Enter Your Weight (LBS)" )
                    
                    VStack {
                        SliderValue(value: model.weightInLBS, withDecimal: false)
                            .padding(.bottom, 15)
                        Slider(value: $model.weightInLBS, in: 1...350, step: 1.0)
                            .accentColor(Color(.systemPink))
                    }
                    .frame(width: 150)
                }
            }
        }
        .frame(width: 300, height: 500)
    }
}

//struct WeightMetricCard_Previews: PreviewProvider {
//    static var previews: some View {
//        WeightCard()
//    }
//}
