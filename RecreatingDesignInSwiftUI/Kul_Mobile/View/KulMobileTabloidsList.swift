//
//  KulMobileTabloidsList.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import SwiftUI

struct KulMobileTabloidsList: View {
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Color.kmPurple
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                KulMobileSearchBar(searchText: $searchText)
                    .padding()
                
                Spacer()
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
            KulMobileTabloidsList()
        }
    }
}
