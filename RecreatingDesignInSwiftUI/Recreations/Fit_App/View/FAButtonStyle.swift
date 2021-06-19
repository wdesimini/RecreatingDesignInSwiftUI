//
//  FAButtonStyle.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 6/18/21.
//

import SwiftUI

struct FAButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.faMedium(size: 14))
    }
}
