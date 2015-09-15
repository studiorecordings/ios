//
//  ViewController.swift
//  MapSample
//
//  Created by Chad Russell on 9/12/15.
//  Copyright © 2015 chadrussell. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

       @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.showsUserLocation = true
        
    }
    
    
    
    
    
    @IBAction func zoomIn(sender: AnyObject) {
        
        let userLocation = mapView.userLocation
        let region = MKCoordinateRegionMakeWithDistance(userLocation.location!.coordinate, 10000, 10000)
       mapView.setRegion(region, animated: true)
       
    
    }
    @IBAction func changeMapType(sender: AnyObject) {
        if mapView.mapType == MKMapType.Standard {
            mapView.mapType = MKMapType.Satellite
        } else {
               mapView.mapType = MKMapType.Standard
        }
    }
    

        
        
    

  override internal  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

