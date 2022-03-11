//
//  PersonalInfo.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 17/09/21.
//

import Foundation

struct PersonalInfo {
    init(firstName: String, lastName: String, preferedName: String, location: Location, nationality: String, languages: [Language], phone: String, mail: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = "\(firstName) \(lastName)"
        self.preferedName = preferedName
        self.location = location
        self.nationality = nationality
        self.languages = languages
        self.phone = phone
        self.mail = mail
    }
    
    let firstName: String
    let lastName: String
    let fullName: String
    var preferedName: String
    var location: Location
    let nationality: String
    var languages: [Language]
    var phone: String
    var mail: String
}

extension PersonalInfo: Equatable, Codable, Hashable { }
