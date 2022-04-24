//  Created by Herie Marie A. Estaño on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: IndexModel
    
    @State var activeCardIndex: Int = 0

 //   @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        VStack {
           Spacer()
            
            if activeCardIndex == 0 {
                TitleCard()
            }
            if activeCardIndex == 1 {
                UnitCard()
            }
            if activeCardIndex == 2 {
                HeightCard()
            }
            if activeCardIndex == 3 {
                WeightCard()
            }
            if activeCardIndex == 4 {
                ResultCard()
            }
            if activeCardIndex == 5 {
                ListViewCard()
            }
        }//:VSTACK
        
            
        if activeCardIndex == 0 {
            NextButton(activeCardIndex: $activeCardIndex)
        } else if activeCardIndex == 1 || activeCardIndex == 2 {
            HStack(alignment: .center, spacing: 150) {
                BackButton(activeCardIndex: $activeCardIndex)
                NextButton(activeCardIndex: $activeCardIndex)
            }
        } else if activeCardIndex == 3 {
            HStack(alignment: .center, spacing: 150) {
                BackButton(activeCardIndex: $activeCardIndex)
                CalculateButton(activeCardIndex: $activeCardIndex)
            }
        } else if activeCardIndex == 4 {
            SaveButton(activeCardIndex: $activeCardIndex)
        } else if activeCardIndex == 5 {
            NextButton(activeCardIndex: $activeCardIndex)
        }
            
        
    } //:BODY
}
    


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
