//
//  ListViewCard.swift
//  IndexApp
//
//  Created by Herie Marie A. Estaño on 4/14/22.
//

import SwiftUI
import CoreData

struct ListViewCard: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
   // @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Results.date, ascending: false )], animation: .default) var results: FetchedResults<Results>
    
//    @FetchRequest(sortDescriptors: []) private var results: FetchedResults<Results>
    
   @State var activeCardIndex = 0
    
    var body: some View {
        
        NavigationView {
                VStack(alignment: .leading) {
               
                   List {
                    ForEach(results) { (result: Results) in
                            HStack(spacing: 50) {
                                Text(formatDate(date: result.date!))
                                Text(String(format: "%0.1f", result.finalResult))
                                Text(result.message ?? "Normal")
                            }//:HSTACK
                            
                        }//:FOREACH
                    .onDelete(perform: deleteBMI)
                  }//:LIST
                   .listStyle(PlainListStyle())
                   .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 12)
                   .padding(.vertical, 20)
                   .frame(maxWidth: 640)
                   .transition(.move(edge: .bottom))
                }//:VSTACK
                .navigationBarTitle("Your BMIs", displayMode: .inline)
        }//:NAVIGATION
    
    }
    
    private func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter.string(from: date)
    }//:FUNCTION
    
    private func deleteBMI(offsets: IndexSet) {
        withAnimation {
            offsets.map{ results[$0] }.forEach(managedObjectContext.delete)
            DataController().save(context: managedObjectContext)
        }
        
    }//:FUNCTION
}

struct ListViewCard_Previews: PreviewProvider {
    static var previews: some View {
        ListViewCard()
    }
}
