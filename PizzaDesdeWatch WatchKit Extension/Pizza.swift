//
//  Pizza.swift
//  PizzaDesdeWatch
//
//  Created by Oscar Javier Olivos on 3/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamano : String
    var masa : String
    var queso : String
    var ingredientes : [String]
    
    override init() {
        self.tamano = ""
        self.masa = ""
        self.queso = ""
        self.ingredientes = [""]
    }

}
