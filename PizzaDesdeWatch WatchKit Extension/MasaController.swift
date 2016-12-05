//
//  MasaController.swift
//  PizzaDesdeWatch
//
//  Created by Oscar Javier Olivos on 3/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {

    @IBOutlet var pickerMasa: WKInterfacePicker!
    var pizza = Pizza.init()
    let itemList: [(String)] = [
        "Delgada",
        "Crujiente",
        "Gruesa"
    ]
    var pickerItems : [WKPickerItem]?
    var masaActual = "Delgada"
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
        pickerItems = itemList.map{
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerMasa.setItems(pickerItems)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func onPickerchange(_ value: Int) {
        masaActual = itemList[value]
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        pizza.masa = masaActual
        return pizza
    }

}
