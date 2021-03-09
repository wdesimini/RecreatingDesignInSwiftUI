//
//  ELUser.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Wilson Desimini on 3/7/21.
//

import Foundation

class ELUser {
    let id: UUID
    var firstName: String
    var lastName: String
    var occupation: String
    var state: String
    var friends: [ELUser]
    var events: [ELEvent]
    
    init(id: UUID, firstName: String, lastName: String, occupation: String, state: String, friends: [ELUser] = [], events: [ELEvent] = []) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.occupation = occupation
        self.state = state
        self.friends = friends
        self.events = events
    }
    
    func friends(goingToEvent event: ELEvent) -> [ELUser] {
        var friendsById = [UUID: ELUser]()
        friends.forEach { friendsById[$0.id] = $0 }
        
        return event.attendees.filter { friendsById[$0.id] != nil }
    }
}
