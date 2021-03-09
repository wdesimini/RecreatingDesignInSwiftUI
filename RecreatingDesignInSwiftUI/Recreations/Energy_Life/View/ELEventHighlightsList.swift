//
//  ELEventHighlightsList.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/9/21.
//

import SwiftUI

struct ELEventHighlightsList: View {
    private let eventHighlights = ELEvent.Highlight.allCases
    
    @Binding var selectedEventHighlight: ELEvent.Highlight
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<eventHighlights.count) { i in
                    Button(
                        action: { selectedEventHighlight = eventHighlights[i] },
                        label: {
                            ELEventHighlightsListItem(
                                highlight: eventHighlights[i],
                                isSelected: eventHighlights[i] == selectedEventHighlight)
                        }
                    )
                    .frame(width: 135)
                }
            }
        }
        .clipped()
    }
}

struct ELEventHighlightsList_Previews: PreviewProvider {
    @State private static var selected = ELEvent.Highlight.mostPopular
    
    static var previews: some View {
        ELEventHighlightsList(selectedEventHighlight: $selected)
    }
}
