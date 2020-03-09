//
//  RootTableViewController.swift
//  swiftBookFirstApp
//
//  Created by Никита Ананьев on 04.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {



    let places = Place.getPlaces()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! CustomTableViewCell
        
        cell.placeName.text = places[indexPath.row].name
        cell.placeType.text = places[indexPath.row].type
        cell.placeLocation.text = places[indexPath.row].location

        cell.placeImage.image = UIImage(named: places[indexPath.row].image)
        cell.placeImage.layer.cornerRadius = cell.placeImage.frame.size.height / 2
        cell.placeImage.clipsToBounds = true
        return cell
    }

    @IBAction func cancelAction( _ segue: UIStoryboardSegue) {
        
    }
    
}
