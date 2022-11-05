//
//  Landmark.swift
//  Example
//
//  Created by Einas Alturki on 11/04/1444 AH.
//

import Foundation

import MapKit

struct Landmark: Identifiable, Hashable {
    
    let placemark: MKPlacemark
    
    let id = UUID()
    
    var name: String {
        self.placemark.name ?? ""
    }
    
    var title: String {
        self.placemark.title ?? ""
    }
    
    var coordinate: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
  
}
