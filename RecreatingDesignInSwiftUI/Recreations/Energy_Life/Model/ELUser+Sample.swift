//
//  ELUser+Sample.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import Foundation

extension ELUser {
    static var sample: ELUser {
        ELUser(
            id: UUID(),
            firstName: "Amanda",
            lastName: "Jacobs",
            occupation: "UI/UX Designer",
            state: "California",
            events: [.sample]
        )
    }
}
