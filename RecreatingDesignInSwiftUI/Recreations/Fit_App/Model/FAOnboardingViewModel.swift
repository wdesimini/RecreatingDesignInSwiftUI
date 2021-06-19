//
//  FAOnboardingViewModel.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 6/18/21.
//

import SwiftUI

class FAOnboardingViewModel {
    let itemViewModels: [FAOnboardingItemViewModel]
    var currentItemViewModelIndex = 0
    
    init(itemViewModels: [FAOnboardingItemViewModel]) {
        self.itemViewModels = itemViewModels
    }
    
    var currentItemView: FAOnboardingViewItem {
        FAOnboardingViewItem(
            viewModel: itemViewModels[currentItemViewModelIndex]
        )
    }
    
    var showSkip: Bool {
        currentItemViewModelIndex < itemViewModels.count - 1
    }
    
    func skip() {
        currentItemViewModelIndex += 1
    }
}

extension FAOnboardingViewModel {
    static var sample: FAOnboardingViewModel {
        .init(
            itemViewModels: [
                .sample,
                .sample2
            ]
        )
    }
}
