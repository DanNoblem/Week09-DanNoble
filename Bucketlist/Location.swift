//
//  Location.swift
//  Bucketlist
//
//  Created by Paul Hudson on 09/12/2021.
//

import Foundation
import CoreLocation
import SwiftUI

struct Model: Encodable, Decodable {
    var items: [Location]
    
    init() {
        items = []
        self.reset();
    }
    
    mutating func reset (){
        items = []
    }
    
    mutating func addLocation (item: Location) {
        var n = item;
        n.id = UUID()
    }
    
    
}

struct Location: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }

    static let example = Location(id: UUID(), name: "Buckingham Palace", description: "Where Queen Elizabeth lives with her dorgis", latitude: 51.501, longitude: -0.141)

    static func ==(lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
