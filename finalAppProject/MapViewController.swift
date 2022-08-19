//
//  MapViewController.swift
//  finalAppProject
//
//  Created by Quianna Numa on 8/18/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentControlOutlet: UISegmentedControl!
    var locations = [location]().self
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = "Fortnum and Mason, London"
        searchRequest.region = mapView.region
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentedControl(_ sender: Any) {
        switch segmentControlOutlet.selectedSegmentIndex {
        case 0:
            locations.removeAll()
            mapView.removeAnnotations(mapView.annotations)
            
            locations.append(location(title1: "#EndPoliceAssociations", sub: "Black Lives Matter", lat: 34.0506539, long: -118.2694990))
            locations.append(location(title1: "Monthly Organizing Meeting", sub: "Black Lives Matter", lat: 34.0045497, long: -118.3323566))
            locations.append(location(title1: "Yard Sale for Reparations Fundraiser", sub: "Black Lives Matter", lat: 37.7754065, long: -122.1853362))
        case 1:
            locations.removeAll()
            mapView.removeAnnotations(mapView.annotations)
            
            locations.append(location(title1: "Fight for our Rights: Abortion Access Fundraiser", sub: "Women's Rights", lat: 37.77818, long: -122.40579))
            locations.append(location(title1: "Planned Parenthood:: Drown Out Their Hate! Counter Protest", sub: "Women's Rights", lat: 37.66484, long: -120.99446))
        case 2:
            locations.removeAll()
            mapView.removeAnnotations(mapView.annotations)
            
            locations.append(location(title1: "Rally/March to Defend DACA!", sub: "Immigration", lat: 37.33780, long: -121.88527))
        case 3:
            locations.removeAll()
            mapView.removeAnnotations(mapView.annotations)
            
            locations.append(location(title1: "Bay Bridge March: World Day for the End of Speciesism", sub: "Animal Rights", lat: 37.82300, long: -122.31482))
            locations.append(location(title1: "Exposing the Deathstar: Rescue Trial in the Utah Desert", sub: "Animal Rights", lat: 40.75906, long: -111.88879))
            locations.append(location(title1: "Exposing the Deathstar: Rescue Trial in the Utah Desert", sub: "Animal Rights", lat: 38.27451, long: 112.63900))
        default:
            break
        }
        
        for place in locations {
            let annotation =  MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)
            annotation.title = place.title
            annotation.subtitle = place.subtitle
            mapView.addAnnotation(annotation)
        }
    }
    
    class location {
        
        var title = "Place"
        var subtitle = "Movement / cause"
        var latitude = 0.0
        var longitude = 0.0
       
        init (title1: String, sub: String, lat: Double, long: Double) {
            title = title1
            subtitle = sub
            latitude = lat
            longitude = long
        }
        
    }
    
    @IBAction func searchButton(_ sender: Any) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        //Ignoring user
        self.view.isUserInteractionEnabled = false
        
        //Activity Indicator
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = UIActivityIndicatorView.Style.medium
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        self.view.addSubview(activityIndicator)
        
        //Hide search bar
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        //Create the search request
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        let activeSearch = MKLocalSearch(request: searchRequest)
        
        activeSearch.start { (response, error) in
            
            activityIndicator.stopAnimating()
            self.view.isUserInteractionEnabled = true
            
            if response == nil
            {
                print("ERROR")
            }
            else
            {
                //Remove annotations
                let annotations = self.mapView.annotations
                self.mapView.removeAnnotations(annotations)
                
                //Getting data
                let latitude = response?.boundingRegion.center.latitude
                let longitude = response?.boundingRegion.center.longitude
                
                //Create annotation
                let annotation = MKPointAnnotation()
                annotation.title = searchBar.text
                annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitude!)
                self.mapView.addAnnotation(annotation)
                
                //Zooming in on annotation
                let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude!, longitude!)
                let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                let region = MKCoordinateRegion(center: coordinate, span: span)
                self.mapView.setRegion(region, animated: true)
            }
            
        }
    }
    

}
