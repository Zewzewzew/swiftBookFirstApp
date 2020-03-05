//
//  RootTableViewController.swift
//  swiftBookFirstApp
//
//  Created by Никита Ананьев on 04.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {
    

    
    let restaurantNames = ["Бокаччо","Юнион", "Sushi White", "Шаверма",
                           "Токио-Сити","Ларек у окна", "Beer Travel", "Контакт бар",
                           "Вольчека","Макдональдс", "KFC", "Еще одна Шаверма"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        return cell
    }

    
    
}
