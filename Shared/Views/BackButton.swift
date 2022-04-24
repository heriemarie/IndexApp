//
//  BackButton.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/12/22.
//

import SwiftUI

struct BackButton: View {
    
    @Binding var activeCardIndex: Int
    
    var body: some View {
        Image(systemName: "chevron.left.circle.fill")
            .font(.largeTitle)
          //  .foregroundColor(Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)))
            .foregroundColor(Color(.systemPink))
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture { moveToPreviousCard() }
    }

    func moveToPreviousCard() {
        withAnimation {
            if activeCardIndex == 3 {
                activeCardIndex -= 1
            } else {
                activeCardIndex = 0
            }
        }
    }//:FUNC
    
}

//struct BackButton_Previews: PreviewProvider {
//    static var previews: some View {
//        BackButton()
//    }
//}
