//
//  KulMobileHomeView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/5/21.
//

import SwiftUI

struct KulMobileHomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 64) {
                Text("Basic\nTeen\nCulture")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.kmBold(size: 60))
                    .minimumScaleFactor(0.5)
                    .foregroundColor(.kmLightTan)
                
                ZStack(alignment: .bottomLeading) {
                    Image("Kul_Mobile_home_picture")
                        .resizable()
                        .scaledToFit()
                    
                    Text("By Teens, For Teens")
                        .font(.kmSecondaryRegular(size: 24))
                        .foregroundColor(.kmLightTan)
                        .opacity(0.5)
                        .rotationEffect(.degrees(-90), anchor: .leading)
                        .offset(x: -24, y: 16)
                }
                .offset(x: 40)
            }
            .padding()
        }
    }
}

struct KulMobileHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStack {
                Color.kmPurple.edgesIgnoringSafeArea(.all)
                
                KulMobileHomeView()
            }
        }
    }
}
