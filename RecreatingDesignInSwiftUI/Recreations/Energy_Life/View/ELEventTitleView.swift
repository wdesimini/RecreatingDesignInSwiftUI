//
//  ELEventTitleView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 3/9/21.
//

import SwiftUI

struct ELEventTitleView: View {
    let event: ELEvent
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("\(event.title)")
                    .font(.elBoldFont(size: 38))
                
                Text("\(event.subtitle)")
                    .font(.elFont(size: 15))
            }
            .foregroundColor(.white)
            
            Spacer()
        }
    }
}

struct ELEventTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ELEvent.sample.category.color.edgesIgnoringSafeArea(.all)
            ELEventTitleView(event: .sample)
        }
        .previewLayout(.fixed(width: 330, height: 120))
    }
}
