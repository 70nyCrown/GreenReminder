//
//  ListView.swift
//  GreenReminder
//
//  Created by Антон Воронин on 13.07.2022.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        VStack {
            //MARK: Header
            ZStack(alignment: .trailing) {
                Rectangle()
                    .foregroundColor(.green)

                Button(action: {
                      print("Add Button has been pressed")
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.white)
                        .font(.title)
                })
                .padding()
            }
            .aspectRatio(12, contentMode: .fit)

            //MARK: ListView
            List {
                ListItem()
                ListItem()
                ListItem()
                ListItem()
                ListItem()
                ListItem()
            }

        }
    }
}

struct ListItem: View {
    
    var body: some View {
        //MARK: List Item Header
        VStack {
            ZStack(alignment: .center) {
                Rectangle()
                    .foregroundColor(.green)
                Text("Plant name")
            }
            .aspectRatio(10, contentMode: .fit)
            
            //MARK: List Item Content
            HStack {
                Image("sampleImage")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                
                VStack {
                    Image(systemName: "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(1, contentMode: .fit)
                    Text("100 mL")
                }
                
                LazyVGrid(columns: [GridItem(), GridItem()], content: {
                    Image(systemName: "bonjour")
                        .resizable()
                    Image(systemName: "sun.max.fill")
                        .resizable()
                    Image(systemName: "face.dashed")
                        .resizable()
                })
                .aspectRatio(1, contentMode: .fit)
                
                Spacer()
                
                VStack {
                    Text("In 3")
                    Text("Days")
                }
                .padding()
            }
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
        ListView()
            .previewDevice("iPhone 12 mini")
        ListView()
            .previewDevice("iPad Air (4th generation)")
        ListItem()
            .previewLayout(.sizeThatFits)
        ListItem()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
