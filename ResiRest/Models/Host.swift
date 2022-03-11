//
//  Family.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 8/09/21.
//

import Foundation

struct Host {
    init(registrationDate: Date, personalInfo: PersonalInfo, address: String, pickUpPoint: String, gender: Gender, birth: Date, description: String, bank: Bank, guestsAmount: Int, separateDiningArea: Bool, toiletAvailable: Bool, weelChairAccessible: Bool, availability: [DayAvailable], menu: [Menu]) {
        self.id = personalInfo.fullName
        self.registrationDate = registrationDate
        self.personalInfo = personalInfo
        self.address = address
        self.pickUpPoint = pickUpPoint
        self.gender = gender
        self.birth = birth
        self.description = description
        self.bank = bank
        self.guestsAmount = guestsAmount
        self.separateDiningArea = separateDiningArea
        self.toiletAvailable = toiletAvailable
        self.weelChairAccessible = weelChairAccessible
        self.availability = availability
        self.menu = menu
    }
    
    let id: String
    let registrationDate: Date
    
    var personalInfo: PersonalInfo
    
    var address: String
    var pickUpPoint: String
    let gender: Gender
    let birth: Date
    
    var description: String
    
    var bank: Bank
    
    var guestsAmount: Int
    var separateDiningArea: Bool
    var toiletAvailable: Bool
    var weelChairAccessible: Bool
    var availability: [DayAvailable]
    
    var menu: [Menu]
}

extension Host: Identifiable, Equatable, Codable, Hashable, Comparable {
    static func == (lhs: Host, rhs: Host) -> Bool {
        lhs.id == rhs.id
    }
    
    static func < (lhs: Host, rhs: Host) -> Bool {
        lhs.id < rhs.id
    }
}
