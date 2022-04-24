//
//  ResultCard.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var model: IndexModel
    
    var body: some View {
        
        
        ZStack {
            
            CardBackground()
        
            VStack {
                CardLabel(title: "Result", caption: "Your Body Mass Index is " )
         
                Text(String(format: "%0.1f", model.resultBMI))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemPink))
                    .padding(.bottom, 70)
                
                Text("kg/m")
                    .font(.title3)
                    + Text("2")
                        .font(.system(size: 12.0))
                        .baselineOffset(10.0)
                        
                Text(model.message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top, 5)
            
            }
        }
        .frame(width: 300, height: 500)
        Spacer()
    }
}

//struct ResultMetricCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultCard()
//    }
//}
