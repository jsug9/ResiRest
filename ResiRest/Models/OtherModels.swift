//
//  OtherModels.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 17/09/21.
//

import Foundation

struct Location {
    var country: String
    var city: String
}

struct Bank {
    var accountHolder: String
    var bankName: String
    var bankCode: String
    var CCI: String
}

struct Menu {
    var name: String
    var type: MenuType
    var description: String
}

struct DayAvailable {
    var day: Day
    var timeDay: [TimeDay]
}

enum Day: String {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

enum TimeDay: String {
    case morning, afternoon
}

enum Gender {
    case male, female, other(String)
    
    func description() -> String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        case .other(let value):
            return value
        }
    }
}

enum Language {
    case spanish, english, french, other(String)
    
    func description() -> String {
        switch self {
        case .spanish:
            return "Spanish"
        case .english:
            return "English"
        case .french:
            return "French"
        case .other(let value):
            return value
        }
    }
}

enum MenuType: String {
    case beef
    case chicken
    case vegan
}


extension Location: Equatable, Codable, Hashable { }
extension Bank: Equatable, Codable, Hashable { }
extension Menu: Equatable, Codable, Hashable { }
extension DayAvailable: Equatable, Codable, Hashable { }

extension Day: Equatable, Codable, Hashable { }
extension TimeDay: Equatable, Codable, Hashable { }
extension Gender: Equatable, Codable, Hashable {
    enum Key: CodingKey {
        case rawValue
        case associatedValue
    }
        
    enum CodingError: Error {
        case unknownValue
    }
        
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Key.self)
        let rawValue = try container.decode(Int.self, forKey: .rawValue)
        switch rawValue {
        case 0:
            self = .male
        case 1:
            self = .female
        case 2:
            let other = try container.decode(String.self, forKey: .associatedValue)
            self = .other(other)
        default:
            throw CodingError.unknownValue
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {
        case .male:
            try container.encode(0, forKey: .rawValue)
        case .female:
            try container.encode(1, forKey: .rawValue)
        case .other(let other):
            try container.encode(2, forKey: .rawValue)
            try container.encode(other, forKey: .associatedValue)
        }
    }
}
extension Language: Equatable, Codable, Hashable {
    enum Key: CodingKey {
        case rawValue
        case associatedValue
    }
        
    enum CodingError: Error {
        case unknownValue
    }
        
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Key.self)
        let rawValue = try container.decode(Int.self, forKey: .rawValue)
        switch rawValue {
        case 0:
            self = .spanish
        case 1:
            self = .english
        case 2:
            self = .french
        case 3:
            let other = try container.decode(String.self, forKey: .associatedValue)
            self = .other(other)
        default:
            throw CodingError.unknownValue
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        switch self {
        case .spanish:
            try container.encode(0, forKey: .rawValue)
        case .english:
            try container.encode(1, forKey: .rawValue)
        case .french:
            try container.encode(2, forKey: .rawValue)
        case .other(let other):
            try container.encode(3, forKey: .rawValue)
            try container.encode(other, forKey: .associatedValue)
        }
    }
}
extension MenuType: Equatable, Codable, Hashable { }
