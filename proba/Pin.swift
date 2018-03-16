//
//  Pin.swift
//  proba
//
//  Created by Dmitry on 17.02.2018.
//  Copyright © 2018 Dmitry. All rights reserved.
//

import MapKit

class APin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    init(title: String, Subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = Subtitle
        self.coordinate = coordinate
        
    }
}
