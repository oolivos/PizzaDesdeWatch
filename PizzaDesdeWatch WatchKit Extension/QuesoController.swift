//
//  QuesoController.swift
//  PizzaDesdeWatch
//
//  Created by Oscar Javier Olivos on 3/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {

    @IBOutlet var pickerQueso: WKInterfacePicker!
    var pizza = Pizza.init()
    let itemList: [(String)] = [
        "Mozarela",
        "Cheddar",
        "Parmesano",
        "Sin Queso"
    ]
    var pickerItems : [WKPickerItem]?
    var quesoActual = "Mozarela"
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
        pickerItems = itemList.map{
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickerQueso.setItems(pickerItems)
        pickerQueso.focus()
        

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
        quesoActual = itemList[value]
    }
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        pizza.queso = quesoActual
        return pizza
    }

}
