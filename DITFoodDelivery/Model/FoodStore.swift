//
//  File.swift
//  DITFoodDelivery
//
//  Created by D7703_06 on 2018. 6. 15..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import Foundation
class FoodStore {
    var name: String
    var image: String
    var address: String
    var tel: String
    var menu: String
    var type: String
    
    init(name: String, image: String, address: String, tel: String, menu: String, type: String) {
        self.name = name
        self.image = image
        self.address = address
        self.tel = tel
        self.menu = menu
        self.type = type
    }
}
