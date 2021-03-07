//
//  KulMobileTabloidListItem.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import SwiftUI

struct KulMobileTabloidListItem: View {
    let tabloid: KulMobileTabloid
    let itemColor: Color
    let fontColor: Color
    
    var body: some View {
        ZStack {
            itemColor.edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading, spacing: 18) {
                    Text(tabloid.category.rawValue)
                        .font(.kmSecondaryRegular(size: 17))
                    
                    Text(tabloid.headline)
                        .font(.kmBold(size: 20))
                        .lineLimit(3)
                }
                .padding()
                .foregroundColor(fontColor)
                
                Spacer()
            }
        }
    }
}

struct KulMobileTabloidListItem_Previews: PreviewProvider {
    static let tabloid = KulMobileTabloid(
        id: 1,
        category: .news,
        headline: "This is the Headline. It's one or two brief sentences."
    )
    
    static var previews: some View {
        KulMobileTabloidListItem(
            tabloid: tabloid,
            itemColor: .kmOrange,
            fontColor: .white)
            .frame(width: 375, height: 185)
            .previewLayout(.sizeThatFits)
    }
}
