//
//  RootTableViewController.swift
//  swiftBookFirstApp
//
//  Created by Никита Ананьев on 04.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    
     let restaurantNames = [
           "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
           "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
           "Speak Easy", "Morris Pub", "Вкусные истории",
           "Классик", "Love&Life", "Шок", "Бочка"
       ]


    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath) as! CustomTableViewCell
        
        cell.placeName.text = restaurantNames[indexPath.row]
        cell.placeImage.image = UIImage(named: restaurantNames[indexPath.row])
        cell.placeImage.layer.cornerRadius = cell.placeImage.frame.size.height / 2
        cell.placeImage.clipsToBounds = true
        return cell
    }

    
    
}
