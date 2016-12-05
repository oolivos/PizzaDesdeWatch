//
//  TamanoController.swift
//  PizzaDesdeWatch
//
//  Created by Oscar Javier Olivos on 3/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit
import Foundation


class TamanoController: WKInterfaceController {

    @IBOutlet var pickerTamano: WKInterfacePicker!
    var pizza = Pizza.init()
    let itemList: [(String)] = [
        "Chica",
        "Mediana",
        "Grande"
         ]
    var pickerItems : [WKPickerItem]?
    var tamanoActual = "Chica"
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
        
        pickerItems = itemList.map{
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerTamano.setItems(pickerItems)
        
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

    @IBAction func onPickerChange(_ value: Int) {
        tamanoActual = itemList[value]
        //print(itemList[value])
        
    }
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        print("va el Segue!!")
        pizza.tamano = tamanoActual
        return pizza
        
    }
}
