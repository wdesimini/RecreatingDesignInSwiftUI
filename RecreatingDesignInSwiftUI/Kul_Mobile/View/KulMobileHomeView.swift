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
            
            VStack {
                Text("Basic Teen Culture")
                    .font(.kmBold(size: 72))
                    .foregroundColor(.kmLightTan)
                
                Spacer()
            }
        }
    }
}

struct KulMobileHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            KulMobileHomeView()
        }
    }
}
