//
//  MapController.swift
//  proba
//
//  Created by Dmitry on 24.01.2018.
//  Copyright © 2018 Dmitry. All rights reserved.
//

import UIKit
import MapsAPI

class MyMapViewController: MapsAPIViewController {
    override func viewDidLoad() {
        // Default: "ru_RU".
        self.apiParams["lang"] = "en_US"
        
        // Default: "release".
        self.apiParams["mode"] = "debug"
        
        // Default: "2.1".
        self.apiVersion = "2.1-dev"
        
        // Default: false. See https://tech.yandex.com/maps/doc/jsapi/2.1/commercial/index-docpage/
        self.apiEnterprise = true
        self.apiParams["apikey"] = "your_key"
        
        // By default is taken from view controller name. I.e. "myMap" for MyMapViewController.
        self.jsFileName = "anotherFile"
        
        super.viewDidLoad()
    }
}
