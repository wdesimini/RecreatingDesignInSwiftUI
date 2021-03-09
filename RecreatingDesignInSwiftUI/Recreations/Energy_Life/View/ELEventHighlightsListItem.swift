//
//  ELEventHighlightsListItem.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/9/21.
//

import SwiftUI

struct ELEventHighlightsListItem: View {
    let highlight: ELEvent.Highlight
    var isSelected: Bool
    
    var body: some View {
        HStack(alignment: .center) {
            if isSelected {
                Circle()
                    .fill(Color.elDarkPurple)
                    .frame(width: 12, height: 12)
            }
            
            Text(highlight.rawValue)
                .font(isSelected ? .elBoldFont(size: 15) : .elMediumFont(size: 15))
                .foregroundColor(isSelected ? .elDarkPurple : .black)
                .opacity(isSelected ? 1 : 0.5)
                .lineLimit(1)
        }
    }
}

struct ELEventHighlightsListItem_Previews: PreviewProvider {
    private static var selectedHighlight = ELEvent.Highlight.mostPopular
    private static let highlight = ELEvent.Highlight.mostPopular
    
    static var previews: some View {
        ELEventHighlightsListItem(highlight: highlight, isSelected: highlight == selectedHighlight)
            .previewLayout(.fixed(width: 135, height: 35))
    }
}
