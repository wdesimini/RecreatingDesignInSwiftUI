//
//  ELEventSnapshotView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/8/21.
//

import SwiftUI

struct ELEventSnapshotView: View {
    let category: ELEventCategory
    let event: ELEvent
    
    var body: some View {
        ZStack {
            category.color.edgesIgnoringSafeArea(.all)
            
            VStack {
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
                
                Spacer()
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .bottom) {
                            Text("Date")
                                .font(.elFont(size: 13))
                            
                            Text("\(event.dateDescription)")
                                .font(.elBoldFont(size: 15))
                        }
                        .foregroundColor(.white)
                        
                        HStack(alignment: .bottom) {
                            Text("Location")
                                .font(.elFont(size: 13))
                            
                            Text("\(event.location)")
                                .font(.elBoldFont(size: 15))
                        }
                    }
                    
                    Spacer()
                    
                    Text("\(event.priceDescription)")
                        .font(.elBoldFont(size: 17))
                }
                .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct ELEventSnapshotView_Previews: PreviewProvider {
    private static let event = ELEvent(
        eventType: .concert,
        title: "Scorpions",
        subtitle: "World Tour - ANGELS TOUR",
        time: Date().timeIntervalSince1970,
        location: "PALACE Stadium",
        cost: 9000
    )
    static var previews: some View {
        ELEventSnapshotView(category: .type(.concert), event: event)
            .previewLayout(.fixed(width: 372, height: 296))
    }
}
