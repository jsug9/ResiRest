//
//  hostSamples.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 16/09/21.
//

import Foundation

var hosts = [
    //Peru
    //Arequipa
    Host(
        registrationDate: Date(),
        personalInfo: PersonalInfo(
            //Change
            firstName: "Jesus Augusto",
            lastName: "Galindo Ali",
            preferedName: "Augusto",
            location: Location(
                country: "Peru",
                city: "Arequipa"
            ),
            //End Change
            nationality: "Peruvian",
            languages: [
                .spanish,
                .english,
                .french
            ],
            phone: "+51 934 875 754",
            mail: "augusto.galindo.9@icloud.com"
        ),
        
        address: "Urbanización Luz y Alegría Mz. P Lt. 5 Paucarpata",
        pickUpPoint: "Posta Alto Jesus",
        gender: .male,
        birth: Date(),
        description: "I'm so cool",
        
        bank: Bank(
            accountHolder: "Jesus Augusto Galindo Ali",
            bankName: "BCP",
            bankCode: "000000",
            CCI: "0000000"
        ),
        
        guestsAmount: 5,
        separateDiningArea: true,
        toiletAvailable: true,
        weelChairAccessible: true,
        
        availability: [
            DayAvailable(
                day: .monday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .tuesday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .wednesday,
                timeDay: [.afternoon]
            ),
            DayAvailable(
                day: .thursday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .friday,
                timeDay: [.morning]
            )
        ],
        
        menu: [
            //Change
            Menu(
                name: "Lomo Saltado",
                type: .beef,
                description: "Lomo"
            ),
            Menu(
                name: "Aji de Gallina",
                type: .chicken,
                description: "Gallina"
            ),
            Menu(
                name: "Soltero de Queso",
                type: .vegan,
                description: "Soltero"
            )
        ]
    ),
    Host(
        registrationDate: Date(),
        personalInfo: PersonalInfo(
            //Change
            firstName: "Rodolfo",
            lastName: "Mendoza Ali",
            preferedName: "Rodolfo",
            location: Location(
                country: "Peru",
                city: "Arequipa"
            ),
            //End Change
            nationality: "Peruvian",
            languages: [
                .spanish,
                .english,
                .french
            ],
            phone: "+51 934 875 754",
            mail: "augusto.galindo.9@icloud.com"
        ),
        
        address: "Urbanización Luz y Alegría Mz. P Lt. 5 Paucarpata",
        pickUpPoint: "Posta Alto Jesus",
        gender: .male,
        birth: Date(),
        description: "I'm so cool",
        
        bank: Bank(
            accountHolder: "Jesus Augusto Galindo Ali",
            bankName: "BCP",
            bankCode: "000000",
            CCI: "0000000"
        ),
        
        guestsAmount: 5,
        separateDiningArea: true,
        toiletAvailable: true,
        weelChairAccessible: true,
        
        availability: [
            DayAvailable(
                day: .monday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .tuesday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .wednesday,
                timeDay: [.afternoon]
            ),
            DayAvailable(
                day: .thursday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .friday,
                timeDay: [.morning]
            )
        ],
        
        menu: [
            //Change
            Menu(
                name: "Lomo Saltado",
                type: .beef,
                description: "Lomo"
            ),
            Menu(
                name: "Aji de Gallina",
                type: .chicken,
                description: "Gallina"
            ),
            Menu(
                name: "Soltero de Queso",
                type: .vegan,
                description: "Soltero"
            )
        ]
    ),
    
    //Lima
    Host(
        registrationDate: Date(),
        personalInfo: PersonalInfo(
            //Change
            firstName: "Diana",
            lastName: "Mendez Huamani",
            preferedName: "Diana",
            location: Location(
                country: "Peru",
                city: "Lima"
            ),
            //End Change
            nationality: "Peruvian",
            languages: [
                .spanish,
                .english,
                .french
            ],
            phone: "+51 934 875 754",
            mail: "augusto.galindo.9@icloud.com"
        ),
        
        address: "Urbanización Luz y Alegría Mz. P Lt. 5 Paucarpata",
        pickUpPoint: "Posta Alto Jesus",
        gender: .male,
        birth: Date(),
        description: "I'm so cool",
        
        bank: Bank(
            accountHolder: "Jesus Augusto Galindo Ali",
            bankName: "BCP",
            bankCode: "000000",
            CCI: "0000000"
        ),
        
        guestsAmount: 5,
        separateDiningArea: true,
        toiletAvailable: true,
        weelChairAccessible: true,
        
        availability: [
            DayAvailable(
                day: .monday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .tuesday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .wednesday,
                timeDay: [.afternoon]
            ),
            DayAvailable(
                day: .thursday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .friday,
                timeDay: [.morning]
            )
        ],
        
        menu: [
            //Change
            Menu(
                name: "Lomo Saltado",
                type: .beef,
                description: "Lomo"
            ),
            Menu(
                name: "Aji de Gallina",
                type: .chicken,
                description: "Gallina"
            ),
            Menu(
                name: "Soltero de Queso",
                type: .vegan,
                description: "Soltero"
            )
        ]
    ),
    
    //Cuzco
    Host(
        registrationDate: Date(),
        personalInfo: PersonalInfo(
            //Change
            firstName: "Alberto",
            lastName: "Cabanillas Saavedra",
            preferedName: "Alberto",
            location: Location(
                country: "Peru",
                city: "Cuzco"
            ),
            //End Change
            nationality: "Peruvian",
            languages: [
                .spanish,
                .english,
                .french
            ],
            phone: "+51 934 875 754",
            mail: "augusto.galindo.9@icloud.com"
        ),
        
        address: "Urbanización Luz y Alegría Mz. P Lt. 5 Paucarpata",
        pickUpPoint: "Posta Alto Jesus",
        gender: .male,
        birth: Date(),
        description: "I'm so cool",
        
        bank: Bank(
            accountHolder: "Jesus Augusto Galindo Ali",
            bankName: "BCP",
            bankCode: "000000",
            CCI: "0000000"
        ),
        
        guestsAmount: 5,
        separateDiningArea: true,
        toiletAvailable: true,
        weelChairAccessible: true,
        
        availability: [
            DayAvailable(
                day: .monday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .tuesday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .wednesday,
                timeDay: [.afternoon]
            ),
            DayAvailable(
                day: .thursday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .friday,
                timeDay: [.morning]
            )
        ],
        
        menu: [
            //Change
            Menu(
                name: "Lomo Saltado",
                type: .beef,
                description: "Lomo"
            ),
            Menu(
                name: "Aji de Gallina",
                type: .chicken,
                description: "Gallina"
            ),
            Menu(
                name: "Soltero de Queso",
                type: .vegan,
                description: "Soltero"
            )
        ]
    ),
    
    //Mexico
    Host(
        registrationDate: Date(),
        personalInfo: PersonalInfo(
            //Change
            firstName: "Alberto",
            lastName: "Cabanillas Saavedra",
            preferedName: "Alberto",
            location: Location(
                country: "Peru",
                city: "Cuzco"
            ),
            //End Change
            nationality: "Peruvian",
            languages: [
                .spanish,
                .english,
                .french
            ],
            phone: "+51 934 875 754",
            mail: "augusto.galindo.9@icloud.com"
        ),
        
        address: "Urbanización Luz y Alegría Mz. P Lt. 5 Paucarpata",
        pickUpPoint: "Posta Alto Jesus",
        gender: .male,
        birth: Date(),
        description: "I'm so cool",
        
        bank: Bank(
            accountHolder: "Jesus Augusto Galindo Ali",
            bankName: "BCP",
            bankCode: "000000",
            CCI: "0000000"
        ),
        
        guestsAmount: 5,
        separateDiningArea: true,
        toiletAvailable: true,
        weelChairAccessible: true,
        
        availability: [
            DayAvailable(
                day: .monday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .tuesday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .wednesday,
                timeDay: [.afternoon]
            ),
            DayAvailable(
                day: .thursday,
                timeDay: [.morning, .afternoon]
            ),
            DayAvailable(
                day: .friday,
                timeDay: [.morning]
            )
        ],
        
        menu: [
            //Change
            Menu(
                name: "Lomo Saltado",
                type: .beef,
                description: "Lomo"
            ),
            Menu(
                name: "Aji de Gallina",
                type: .chicken,
                description: "Gallina"
            ),
            Menu(
                name: "Soltero de Queso",
                type: .vegan,
                description: "Soltero"
            )
        ]
    ),
]

var countries: [String] {
    var countries = [String]()
    
    for host in hosts {
        countries.append(host.personalInfo.location.country)
    }
    
    return countries.uniqued()
}

func cities(country: String) -> [String] {
    var locations = [Location]()
    var cities = [String]()
    
    for host in hosts {
        locations.append(host.personalInfo.location)
    }
    
    locations = locations.filter { $0.country == country }
    
    for location in locations {
        cities.append(location.city)
    }
    
    return cities.uniqued()
}


