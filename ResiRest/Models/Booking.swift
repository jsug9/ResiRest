//
//  Booking.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 9/09/21.
//

import Foundation

struct Booking {
    var host: Host
    var location: Location
    var date: Date
    var guest: Guest
    var numberofGuests: Int
    var meetingPoint: String
    var foodPreference: MenuType?
    var including: Extras?
    var extraNotes: String?
}

enum Extras: String {
    case helpMeCooking = "Help me cooking"
    case neightbourhoodVisit = "Neightbourhood visit"
    case marketVisit = "Market Visit"
}
