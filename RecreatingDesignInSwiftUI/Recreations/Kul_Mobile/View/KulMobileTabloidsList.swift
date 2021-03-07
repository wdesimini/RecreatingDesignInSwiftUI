//
//  KulMobileTabloidsList.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import SwiftUI

struct KulMobileTabloidsList: View {
    @ObservedObject private var dataService = KulMobileTabloidDataService()
    
    @State var searchText = ""
    
    private var filteredTabloids: [KulMobileTabloid] {
        var result = dataService.tabloids
        
        let lowercasedSearchText = searchText.lowercased()
        
        if !searchText.isEmpty {
            result = result.filter {
                $0.category.rawValue.lowercased().contains(lowercasedSearchText)
                || $0.headline.lowercased().contains(lowercasedSearchText)
            }
        }
        
        return result
    }
    
    var body: some View {
        VStack(spacing: 18) {
            KulMobileSearchBar(searchText: $searchText)
                .padding([.top, .horizontal])
            
            List {
                ForEach(filteredTabloids) { KulMobileTabloidListItem(tabloid: $0) }
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
}

struct KulMobileTabloidsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStack {
                Color.kmPurple
                    .edgesIgnoringSafeArea(.all)
                
                KulMobileTabloidsList()
            }
        }
    }
}
