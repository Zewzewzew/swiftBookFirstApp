//
//  CustomTableViewCell.swift
//  swiftBookFirstApp
//
//  Created by Никита Ананьев on 05.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var placeImage: UIImageView!
    
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeLocation: UILabel!
    @IBOutlet weak var placeType: UILabel!
}
