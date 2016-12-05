//
//  InterfaceController.swift
//  PizzaDesdeWatch WatchKit Extension
//
//  Created by Oscar Javier Olivos on 2/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    let pizza = Pizza.init()
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if(segueIdentifier == "TamanoSegue"){
            return pizza
        }else{
            return nil
        }
        
    }

}
