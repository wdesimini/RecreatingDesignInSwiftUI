//
//  FAOnboardingViewItem.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 6/18/21.
//

import SwiftUI

struct FAOnboardingViewItem: View {
    let viewModel: FAOnboardingItemViewModel
    
    var body: some View {
        VStack(spacing: 32) {
            Image(viewModel.imageName)
                .resizable()
                .scaledToFit()
            VStack(spacing: 12) {
                Text(viewModel.title)
                    .font(.faBold(size: 28))
                Text(viewModel.instruction)
                    .font(.faRegular(size: 12))
            }
            .multilineTextAlignment(.center)
        }
        .frame(width: 222)
    }
}

struct FAOnboardingViewItem_Previews: PreviewProvider {
    static var previews: some View {
        FAOnboardingViewItem(viewModel: .sample)
    }
}
