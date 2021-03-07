//
//  KulMobileTabloidsList.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import SwiftUI

struct KulMobileTabloidsList: View {
    private let itemFontColorPairs: [(Color, Color)] = [
        (.kmOrange, .white),
        (.kmBoldYellow, .kmDarkGreen),
        (.white, .kmDarkBlue),
    ]
    
    @ObservedObject private var dataService = KulMobileTabloidDataService()
    
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Color.kmPurple
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 18) {
                KulMobileSearchBar(searchText: $searchText)
                    .padding([.top, .horizontal])
                
                List {
                    ForEach(Array(dataService.tabloids.enumerated()), id: \.1.id) { (index, tabloid) in
                        KulMobileTabloidListItem(
                            tabloid: tabloid,
                            itemColor: itemFontColors(atIndex: index).0,
                            fontColor: itemFontColors(atIndex: index).1)
                    }
                    .frame(height: 185)
                    .listRowBackground(
                        Color.clear
                            .edgesIgnoringSafeArea(.all))
                }
                .listStyle(PlainListStyle())
                .onAppear {
                    UITableView.appearance().backgroundColor = .clear
                    UITableViewCell.appearance().backgroundColor = .clear
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("\nFresh\nTabloids")
                    .foregroundColor(.white)
                    .font(.kmRegular(size: 32))
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("2 dots tapped")
                }, label: {
                    Image("Kul-Mobile_settings_icon")
                })
            }
        }
    }
    
    private func itemFontColors(atIndex index: Int) -> (Color, Color) {
        itemFontColorPairs[index]
    }
}

struct KulMobileTabloidsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            KulMobileTabloidsList()
        }
    }
}
