//
//  ListView.swift
//  GreenReminder
//
//  Created by Антон Воронин on 13.07.2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var isPresent = true
    
    var body: some View {
        VStack {
            HStack {
                Rectangle().size(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 15).foregroundColor(.green)
                
                Button(action: {
                    Alert(title: Text("WOW"), message: Text("Add button pressed"))
                }, label: {
                    Text("+")
                })
            }
            
        }
    }
}

struct ListItem: View {
    
    private let width = UIScreen.main.bounds.width
    private let height = UIScreen.main.bounds.height
    private let unitSize = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            Text("Plant name")
                .frame(width: unitSize, height: unitSize/10, alignment: .center)
                .foregroundColor(.white)
                .background(Color(.green))
                
            HStack {
                Image("sampleImage")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: unitSize/5, height: unitSize/5, alignment: .center)
                VStack {
                    Image(systemName: "drop.fill")
                        .aspectRatio(1, contentMode: .fit)
                    Text("100 mL")
                }
                .frame(width: unitSize/5, height: unitSize/5, alignment: .center)
                LazyVGrid(columns: [GridItem(), GridItem()], content: {
                    Image(systemName: "bonjour")
                    Image(systemName: "sun.max.fill")
                    Image(systemName: "face.dashed")
                })
                .aspectRatio(1, contentMode: .fit)
                .frame(width: unitSize/5, height: unitSize/5, alignment: .center)
                Spacer()
                VStack {
                    Text("In 3")
                    Text("Days")
                }
                .frame(width: unitSize/5, height: unitSize/5, alignment: .center)
            }
            .frame(width: unitSize, height: unitSize / 2, alignment: .center)
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
        ListItem()
            .previewLayout(.sizeThatFits)
        
    }
}
