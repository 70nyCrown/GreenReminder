//
//  ListItem.swift
//  GreenReminder
//
//  Created by Антон Воронин on 25.07.2022.
//
import SwiftUI

struct ListItem: View, Identifiable {
    let id = UUID.init()
    
    init() {
        print("ListItem created with id: \(id)")
    }
    
    var body: some View {
        LazyVStack {
            Text(Constants.plantName)
                .font(.system(size: Constants.plantNameFont))
                .padding(.top)
                .onTapGesture {
                    print(id)
                }
            HStack {
                Constants.plantIcon
                    .resizable()
                    .scaledToFit()
                    .padding()
                VStack {
                    Constants.wateringIcon
                    Text(String(Constants.wateringValue))
                }
                .aspectRatio(1, contentMode: .fit)
                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    ForEach(Constants.chemicalItems) { item in
                        item.icon
                            .resizable()
                            .scaledToFit()
                    }
                }
                .padding()
                VStack {
                    Text(String(Constants.daysToWater))
                    Text("Days")
                }
                .padding()
            }
            .frame(width: UIScreen.main.bounds.width)
            .aspectRatio(4/1, contentMode: .fill)
        }
        .background(Rectangle().foregroundColor(.green))
    }
    
    private struct Constants {
        static let plantName: String = "Plant Name"
        static let plantNameFont: CGFloat = 16
        static let plantIcon: Image = Image("sampleImage")
        static let wateringValue: UInt = 100
        static let chemicalsIconsOLD: [Image] = [Image("sampleImage"), Image("sampleImage"), Image("sampleImage")]
        static let chemicalItems: [chemicalIcon] = [
            chemicalIcon(icon: Image("sampleImage"), id: UUID.init()),
            chemicalIcon(icon: Image("sampleImage"), id: UUID.init()),
            chemicalIcon(icon: Image("sampleImage"), id: UUID.init())
        ]
        static let daysToWater: UInt = 2
        static let wateringIcon: Image = Image(systemName: "drop.fill")
        static let wateringIconScale: CGFloat = 0.5
    }
}

struct chemicalIcon: Identifiable {
    let icon: Image
    let id: UUID
}
