//
//  CardLabel.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct CardLabel: View {
    
    let title: String
    let caption: String
    
    var body: some View {
        
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemPink))
                .padding(.bottom, 10)
                                 
            Text(caption)
                .font(.caption)
                .kerning(5.0)
                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                .padding(.bottom, 30)
            
        }
    }
}

//struct CardLabel_Previews: PreviewProvider {
//    static var previews: some View {
//        CardLabel()
//    }
//}
