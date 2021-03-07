//
//  KulMobileAppView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import SwiftUI

struct KulMobileAppView: View {
    @State private var isShowingTabloids = false
    
    var body: some View {
        NavigationView {
            presentedView
                .navigationBarItems(
                    leading: Button(
                        action: { isShowingTabloids.toggle() },
                        label: {
                            Text(isShowingTabloids ? "HOME" : "KUL!")
                                .font(.kmSecondaryRegular(size: 42))
                                .foregroundColor(.kmYellow)
                                .rotationEffect(.degrees(-14)) }),
                    trailing: Button(
                        action: { print("2 dots tapped") },
                        label: {
                            Image("Kul-Mobile_settings_icon") }))
        }
    }
    
    var presentedView: AnyView {
        if isShowingTabloids {
            return AnyView(KulMobileTabloidsList())
        } else {
            return AnyView(KulMobileHomeView())
        }
    }
}

struct KulMobileAppView_Previews: PreviewProvider {
    static var previews: some View {
        KulMobileAppView()
    }
}
