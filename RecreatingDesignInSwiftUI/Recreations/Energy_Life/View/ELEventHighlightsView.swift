//
//  ELEventHighlightsView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import SwiftUI

struct ELEventHighlightsView: View {
    @Binding var user: ELUser
    
    @State private var selectedEventHighlight = ELEvent.Highlight.allCases.first!
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            ELEventHighlightsList(selectedEventHighlight: $selectedEventHighlight)
                .frame(height: 20)
            
            if let event = user.highlightedEvent(selectedEventHighlight) {
                ELEventSnapshotView(event: event)
            }
        }
    }
}

struct ELEventHighlightsView_Previews: PreviewProvider {
    @State private static var user = ELUser.sample
    
    static var previews: some View {
        ELEventHighlightsView(user: $user)
            .previewLayout(.fixed(width: 435, height: 352))
    }
}
