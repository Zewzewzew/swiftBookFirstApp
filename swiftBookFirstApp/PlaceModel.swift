//
//  PlaceModel.swift
//  swiftBookFirstApp
//
//  Created by Никита Ананьев on 09.03.2020.
//  Copyright © 2020 @NkitaAnanev. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
     static let restaurantNames = [
           "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
           "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
           "Speak Easy", "Morris Pub", "Вкусные истории",
           "Классик", "Love&Life", "Шок", "Бочка"
       ]
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Saint-Petersburg", type: "Ресторан", image: place))
        }

        
        
        return places
    }
}
