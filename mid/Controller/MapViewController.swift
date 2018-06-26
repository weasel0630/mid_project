//
//  MapViewController.swift
//  mid
//
//  Created by csie on 2018/6/21.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, URLSessionDataDelegate {
    
    @IBOutlet var mapView: MKMapView!
    var butterfly = Butterfly()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let annotation = MKPointAnnotation()
        annotation.title = butterfly.name1
        annotation.subtitle = butterfly.name2
        annotation.coordinate = CLLocationCoordinate2D(latitude: butterfly.lat, longitude: butterfly.lon)
        self.mapView.showAnnotations([annotation], animated: true)
        self.mapView.selectAnnotation(annotation, animated: true)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
