//
//  NextButton.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/10/22.
//

import SwiftUI

struct NextButton: View {
    
    @Binding var activeCardIndex: Int
    
    var body: some View {
        
        Image(systemName: "chevron.right.circle.fill")
            .font(.largeTitle)
          //  .foregroundColor(Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)))
            .foregroundColor(Color(.systemPink))
            .frame(height: 80)
            .padding(.top, 50)
            .onTapGesture { moveToNextCard() }
    }
    
    func moveToNextCard() {
        withAnimation {
            if activeCardIndex <= 3 {
                activeCardIndex += 1
            } else if activeCardIndex == 5{
                activeCardIndex = 0
            }
        }
    }//:FUNC
}

//struct NextButton_Previews: PreviewProvider {
//    static var previews: some View {
//        NextButton()
//    }
//}
