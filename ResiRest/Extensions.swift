//
//  Extensions.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 9/09/21.
//

import Foundation
import CoreLocation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

extension RawRepresentable where RawValue == String {
    var capitalizedDescription: String { rawValue.capitalizingFirstLetter() }
}

extension Sequence where Element: Hashable {
    func uniqued() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}

extension Double {
    func currencyEUR() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "€"
        
        return formatter.string(from: NSNumber(value: self)) ?? "ERROR"
    }
    
    func twoDecimals() -> String {
        String(format: "%.2f", self)
    }
}

//extension CLLocationManager {
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        if let lastLocation = locations.last {
//            let geocoder = CLGeocoder()
//
//            geocoder.reverseGeocodeLocation(lastLocation) { [weak self] (placemarks, error) in
//                if error == nil {
//                    if let firstLocation = placemarks?[0],
//                        let cityName = firstLocation.locality { // get the city name
//                        self?.locationManager.stopUpdatingLocation()
//                    }
//                }
//            }
//        }
//    }
//}
