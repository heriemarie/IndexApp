//
//  TitleCard.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct TitleCard: View {
    
    var body: some View {
        
        ZStack {
            CardBackground()
            CardLabel(title: "INDEX", caption: "BMR Calculator")
        }
        .frame(width: 300, height: 500)
    }
}

struct TitleCard_Previews: PreviewProvider {
    static var previews: some View {
        TitleCard()
    }
}
