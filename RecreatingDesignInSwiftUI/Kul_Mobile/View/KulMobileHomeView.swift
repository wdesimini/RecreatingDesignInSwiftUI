//
//  KulMobileHomeView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/5/21.
//

import SwiftUI

struct KulMobileHomeView: View {
    var body: some View {
        ZStack {
            Color.kmPurple.edgesIgnoringSafeArea(.all)
            
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
        .navigationBarItems(
            leading: NavigationLink(destination: KulMobileTabloidsList(), label: {
                Text("KUL!")
                    .font(.kmSecondaryRegular(size: 42))
                    .foregroundColor(.kmYellow)
                    .rotationEffect(.degrees(-14))
            }),
            trailing: Button(action: { print("2 dots tapped") }, label: {
                Image("Kul-Mobile_settings_icon")
            }))
    }
}

struct KulMobileHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            KulMobileHomeView()
        }
    }
}
