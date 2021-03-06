//
//  KulMobileHomeView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/5/21.
//

import SwiftUI

struct KulMobileHomeView: View {
    var body: some View {
        VStack {
            Text("Basic Teen Culture")
                .font(.kmBold(size: 72))
            
            Spacer()
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
