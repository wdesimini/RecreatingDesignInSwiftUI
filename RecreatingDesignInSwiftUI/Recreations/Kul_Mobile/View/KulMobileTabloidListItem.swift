//
//  KulMobileTabloidListItem.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/6/21.
//

import SwiftUI

struct KulMobileTabloidListItem: View {
    let tabloid: KulMobileTabloid
    private let itemColorPalette: (item: Color, font: Color)
    
    init(tabloid: KulMobileTabloid) {
        self.tabloid = tabloid
        self.itemColorPalette = Self.itemColorPalette(for: tabloid.category)
    }
    
    var body: some View {
        ZStack {
            itemColorPalette.item.edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading, spacing: 18) {
                    Text(tabloid.category.rawValue)
                        .font(.kmSecondaryRegular(size: 17))
                    
                    Text(tabloid.headline)
                        .font(.kmBold(size: 20))
                        .lineLimit(3)
                }
                .padding()
                .foregroundColor(itemColorPalette.font)
                
                Spacer()
            }
        }
    }
    
    private static func itemColorPalette(for category: KulMobileTabloid.Category) -> (item: Color, font: Color) {
        switch category {
        case .news:
            return (.kmOrange, .white)
        case .fashion:
            return (.kmBoldYellow, .kmDarkGreen)
        case .entertainment:
            return (.white, .kmDarkBlue)
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
        KulMobileTabloidListItem(tabloid: tabloid)
            .frame(width: 375, height: 185)
            .previewLayout(.sizeThatFits)
    }
}
