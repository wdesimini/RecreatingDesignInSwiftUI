//
//  KulMobileSearchBar.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import SwiftUI

struct KulMobileSearchBar: View {
    @Binding var searchText: String
    @State private(set) var isEditting = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white)
                .opacity(0.4)
            
            HStack {
                if !isEditting {
                    Image("Kul_Mobile_search")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .padding([.vertical, .leading], 8)
                }
                
                TextField("Search Here", text: $searchText, onEditingChanged: { editting in
                    withAnimation(.easeInOut) { self.isEditting = editting }
                })
                .background(Color.clear)
                .foregroundColor(.white)
                .frame(height: 42)
                .padding(.horizontal)
            }
        }
        .frame(height: 42)
    }
}

struct KulMobileSearchBar_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        Color.kmPurple
            .overlay(KulMobileSearchBar(searchText: $text))
            .frame(height: 42)
            .previewLayout(.sizeThatFits)
            
    }
}
