//
//  ELUser.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

class ELUser {
    var firstName: String
    var lastName: String
    var occupation: String
    var state: String
    var friendsCount: Int
    
    init(firstName: String, lastName: String, occupation: String, state: String, friendsCount: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.occupation = occupation
        self.state = state
        self.friendsCount = friendsCount
    }
}
