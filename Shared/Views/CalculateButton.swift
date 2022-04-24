//
//  CalculateButton.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI


struct CalculateButton: View {
    
    @EnvironmentObject var model: IndexModel
    
    @Binding var activeCardIndex: Int
    
    var body: some View {
        Text("CALCULATE")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemPink))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                model.calculateBMI()
                moveToNextCard()
            }
        
    }
    
    func moveToNextCard() {
        withAnimation {
            if activeCardIndex <= 3 {
                activeCardIndex += 1
            } else {
                activeCardIndex = 0
            }
        }
    }//:FUNC
}

//struct CalculateButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CalculateButton(index: activeCardIndex)
//    }
//}
