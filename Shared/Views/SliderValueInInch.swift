//
//  SliderValueInInch.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/11/22.
//

import SwiftUI

struct SliderValueInInch: View {
    
    let value: Double
    
    var body: some View {
        
        Text(String(format: "%.2f", value))
            .font(.title)
            .frame(width: 80, height: 80)
            .foregroundColor(Color(.white))
            .background(Color(.systemPink))
            .clipShape(Circle())
    }
}

//struct SliderValueInInch_Previews: PreviewProvider {
//    static var previews: some View {
//        SliderValueInInch()
//    }
//}
