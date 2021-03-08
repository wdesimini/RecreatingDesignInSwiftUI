//
//  ELUserSnapshotView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import SwiftUI

struct ELUserSnapshotView: View {
    let user: ELUser
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                
                HStack(spacing: 12) {
                    Circle()
                        .fill(Color.elRed)
                        .frame(width: geo.size.height / 2)
                        .padding(.leading)
                    
                    VStack(alignment: .leading) {
                        Text("\(user.firstName) \(user.lastName)")
                            .font(.elBoldFont(size: 17))
                            .foregroundColor(.elPurple)
                        
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 12) {
                            Text("\(user.occupation)")
                                .font(.elMediumFont(size: 15))
                            
                            Circle()
                                .frame(width: 3, height: 3)
                            
                            Text("\(user.friendsCount) friends")
                        }
                        .opacity(0.5)
                    }
                    
                    Spacer()
                }
                .frame(height: geo.size.height / 2)
                
                Spacer()
            }
            .background(Color.elOffWhite)
            .cornerRadius(20)
        }
    }
}

struct ELUserSnapshotView_Previews: PreviewProvider {
    static var previews: some View {
        ELUserSnapshotView(user: .sample)
            .previewLayout(.fixed(width: 350, height: 95))
    }
}
