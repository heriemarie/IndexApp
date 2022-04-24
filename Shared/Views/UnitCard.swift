//
//  UnitCard.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct UnitCard: View {
    
    @EnvironmentObject var model: IndexModel

    
    var body: some View {
        
        ZStack {
            
            CardBackground()
        
            VStack {
                CardLabel(title: "Unit", caption: "Select Your Unit" )
        
                //Picker
                Picker("Units", selection: $model.unit) {
                    Text("Metric").tag(Units.metric)
                    Text("Imperial").tag(Units.imperial)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            }
        }
        .frame(width: 300, height: 500)
    }
}

//struct UnitCard_Previews: PreviewProvider {
//    static var previews: some View {
//        UnitCard()
//    }
//}
