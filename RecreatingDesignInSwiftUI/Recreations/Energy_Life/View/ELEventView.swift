//
//  ELEventView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 3/9/21.
//

import SwiftUI

struct ELEventView: View {
    let event: ELEvent
    
    var body: some View {
        VStack {
            GeometryReader { geo in
                ZStack {
                    event.category.color.edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Spacer()
                        
                        ELEventTitleView(event: event)
                    }
                    .padding(32)
                }
                .cornerRadius(32)
                .frame(height: geo.size.width)
            }
            .padding(8)
            
            Spacer()
        }
    }
}

struct ELEventView_Previews: PreviewProvider {
    static var previews: some View {
        ELEventView(event: .sample)
    }
}
