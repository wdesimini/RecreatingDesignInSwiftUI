//
//  ELEventView.swift
//  RecreatingDesignInSwiftUI
//
//  Created by Desimini, Wilson on 3/9/21.
//

import SwiftUI

struct ELEventView: View {
    let user: ELUser
    let event: ELEvent
    
    var userAttendingEvent: Bool {
        user.events.contains { $0.title == event.title }
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    event.category.color.edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Spacer()
                        
                        ELEventTitleView(event: event)
                    }
                    .padding(32)
                }
                .cornerRadius(32)
                .frame(height: geo.size.width)
                .padding(8)
                
                VStack {
                    VStack {
                        ForEach([event.dateDescription, event.location], id: \.self) { descriptor in
                            HStack {
                                Circle()
                                    .fill(event.category.color)
                                    .frame(width: 12, height: 12)
                                    .padding()
                                
                                VStack(alignment: .leading) {
                                    Text(descriptor)
                                        .font(.elSemiBoldFont(size: 17))
                                        .foregroundColor(event.category.color)
                                }
                                
                                Spacer()
                            }
                        }
                        
                        HStack {
                            HStack(spacing: 0) {
                                Button(action: { print("friends going tapped") }, label: {
                                    Text("\(user.friends(goingToEvent: event).count) friends")
                                        .foregroundColor(.black)
                                        .underline()
                                })
                                
                                Text(" going to this event")
                            }
                            
                            Spacer()
                        }
                        .padding()
                    }
                    
                    Spacer()
                    
                    Rectangle()
                        .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .opacity(0.1)
                        .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        Text(event.priceDescription)
                            .font(.elBoldFont(size: 28))
                            .foregroundColor(event.category.color)
                            .frame(maxWidth: .infinity)
                        
                        Spacer()
                        
                        Button(
                            action: { print("register tapped") },
                            label: {
                                Text(userAttendingEvent ? "Going" : "Register")
                                    .frame(width: 242, height: 78)
                                    .font(.elSemiBoldFont(size: 20))
                                    .foregroundColor(.white)
                                    .background(userAttendingEvent ? Color.elTeal : Color.elRed)
                                    .cornerRadius(39)
                            })
                    }
                }
                .padding()
            }
        }
    }
}

struct ELEventView_Previews: PreviewProvider {
    static var previews: some View {
        ELEventView(user: .sample, event: .sample)
    }
}
