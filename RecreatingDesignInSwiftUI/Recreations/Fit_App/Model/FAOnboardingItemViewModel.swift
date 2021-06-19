//
//  FAOnboardingItemViewModel.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 6/18/21.
//

import Foundation

struct FAOnboardingItemViewModel: Identifiable {
    let id: UUID
    let imageName: String
    let title: String
    let instruction: String
}

extension FAOnboardingItemViewModel {
    static var sample: FAOnboardingItemViewModel {
        .init(
            id: UUID(),
            imageName: "apple_calculator",
            title: "Set your\ndaily goal",
            instruction: "Calculate the caloric value and nutritional requirements using the calculator or enter the values manually and stick to the set goal"
        )
    }
    
    static var sample2: FAOnboardingItemViewModel {
        .init(
            id: UUID(),
            imageName: "apple_calculator",
            title: "Set your\ndaily goal",
            instruction: "This is the second item's description."
        )
    }
}
