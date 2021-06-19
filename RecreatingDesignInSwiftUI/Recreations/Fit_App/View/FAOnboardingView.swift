//
//  FAOnboardingView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 6/18/21.
//

import SwiftUI

struct FAOnboardingView: View {
    @State var viewModel: FAOnboardingViewModel
    
    var body: some View {
        VStack(spacing: 44) {
            viewModel.currentItemView
            HStack {
                Spacer()
                Button(viewModel.showSkip ? "Skip" : "Done") {
                    buttonTapped()
                }
                .buttonStyle(FAButtonStyle())
            }
        }
        .padding(24)
    }
    
    private func buttonTapped() {
        viewModel.showSkip
            ? viewModel.skip()
            : exitOnboardingView()
    }
    
    private func exitOnboardingView() {
        print("all done!")
    }
}

struct FAOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FAOnboardingView(viewModel: .sample)
    }
}
