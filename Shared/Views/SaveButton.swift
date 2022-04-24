//
//  SaveButton.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/14/22.
//

import SwiftUI

struct SaveButton: View {
    
   @EnvironmentObject var model: IndexModel
 //  @EnvironmentObject var dataController: DataController
   @Environment(\.managedObjectContext) var managedObjectContext
   
    
   @Binding var activeCardIndex: Int
    
    
    var body: some View {
        Text("SAVE")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.top, 8)
            .padding(.bottom, 8)
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .foregroundColor(Color(.white))
            .background(Color(.systemPink))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 30)
            .onTapGesture {
                DataController().addResult(date: Foundation.Date(), total: model.resultBMI, message: model.message, context: managedObjectContext)
//
//                dataController.addResult(date: Foundation.Date(), total: model.resultBMI, message: model.message, context: managedObjectContext)
            
                moveToNextCard()
            }
    }
    
    func moveToNextCard() {
        withAnimation {
            if activeCardIndex <= 4 {
                activeCardIndex += 1
            } else {
                activeCardIndex = 0
            }
        }
    }//:FUNC
    
    
    
}

//struct SaveButton_Previews: PreviewProvider {
//    static var previews: some View {
//        SaveButton()
//            .previewLayout(.sizeThatFits)
//    }
//}
