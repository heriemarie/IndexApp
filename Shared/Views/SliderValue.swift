//
//  SliderValue.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct SliderValue: View {
    
    let value: Double
    let withDecimal: Bool
    
    var body: some View {
        
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80)
            .foregroundColor(Color(.white))
            .background(Color(.systemPink))
            .clipShape(Circle())
    }
}

//struct SliderValue_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderValue()
//    }
//}
