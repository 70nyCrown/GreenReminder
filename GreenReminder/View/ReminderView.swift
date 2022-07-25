//
//  ListView.swift
//  GreenReminder
//
//  Created by Антон Воронин on 13.07.2022.
//

import SwiftUI

struct ReminderView: View {
    @ObservedObject var reminderViewModel: ReminderVM
    
    init() {
        reminderViewModel = ReminderVM()
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .trailing) {
                Rectangle()
                    .foregroundColor(.blue)
                Button(action: {
                    print("Add Button has been pressed")
                    createItem()
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.white)
                        .font(.title)
                })
                .padding()
            }
            .aspectRatio(12, contentMode: .fit)
            
            ScrollView {
                LazyVStack {
                    ForEach(reminderViewModel.items) { item in
                        item
                    }
                }
            }
            .padding()
        }
    }
    
    private func createItem() {
        print("CreateItem() func")
        reminderViewModel.addItem(item: ListItem())
    }
    
//    private struct Constants {
//        static let listItems = [ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem(), ListItem()]
//    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
                ReminderView()
        //        ReminderView()
        //            .previewDevice("iPhone 12 mini")
        //        ReminderView()
        //            .previewDevice("iPad Air (4th generation)")
        ListItem()
            .previewLayout(.sizeThatFits)
        //        ListItem()
        //            .previewLayout(.sizeThatFits)
        //            .preferredColorScheme(.dark)
    }
}
