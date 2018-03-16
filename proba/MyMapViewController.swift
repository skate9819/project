//
//  MyMapViewController.swift
//  proba
//
//  Created by Dmitry on 17.02.2018.
//  Copyright © 2018 Dmitry. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MyMapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var MyMap: MKMapView!
    var pin:APin!
    var ppin:APin!


    @IBOutlet weak var add: UIButton!
    
    let LocationManeger = CLLocationManager()
    var mycoord:CLLocationCoordinate2D!
    
    
    @IBAction func addpinn(_ sender: Any) {
        let pppin = APin(title: "SKATE", Subtitle: "spot", coordinate: mycoord)
        let region = MKCoordinateRegionMakeWithDistance(mycoord, 1000, 1000)
        MyMap.setRegion(region, animated: true)
        MyMap.addAnnotation(pppin)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cor = CLLocationCoordinate2D(latitude: 27.173, longitude: 78.042)
        //let region = MKCoordinateRegionMakeWithDistance(cor, 1000, 1000)
        //MyMap.setRegion(region, animated: true)
        pin = APin(title: "", Subtitle: "", coordinate: cor)
        MyMap.addAnnotation(pin)
        
        
        //MyMap.bringSubview(toFront: Button)
        LocationManeger.delegate = self
        LocationManeger.requestWhenInUseAuthorization()
        LocationManeger.startUpdatingLocation()
        
    }
    
  
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        let center = location.coordinate
        mycoord = center
        //ppin = APin(title: "NIKITA LOX", Subtitle: "Pidr", coordinate: center)
        //MyMap.addAnnotation(ppin)
        
        //let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        //let region = MKCoordinateRegion(center: center, span: span)
        //MyMap.setRegion(region, animated: true)
        MyMap.showsUserLocation = true
        MyMap.bringSubview(toFront: Button)
        MyMap.bringSubview(toFront: add)


    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
