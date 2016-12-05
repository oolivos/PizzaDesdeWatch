//
//  CocinarController.swift
//  PizzaDesdeWatch
//
//  Created by Oscar Javier Olivos on 3/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit
import Foundation


class CocinarController: WKInterfaceController {

    @IBOutlet var txtTamano: WKInterfaceLabel!
    @IBOutlet var txtMasa: WKInterfaceLabel!
    @IBOutlet var txtQueso: WKInterfaceLabel!
    @IBOutlet var txtIngredientes: WKInterfaceLabel!
    var pizza = Pizza.init()
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
        txtTamano.setText(pizza.tamano)
        txtMasa.setText(pizza.masa)
        txtQueso.setText(pizza.queso)
        var textoIngrediente = ""
        for ingrediente in pizza.ingredientes {
            textoIngrediente = textoIngrediente + ", "+ingrediente
        }
        textoIngrediente.remove(at: textoIngrediente.startIndex)
        txtIngredientes.setText(textoIngrediente)
        //print(pizza)
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

    @IBAction func onCocinarClick() {
        let okAction = WKAlertAction(title: "ok", style: WKAlertActionStyle.default, handler: {
            self.resetPizza()
        })
        let cancelAction = WKAlertAction(title: "Cancelar", style: WKAlertActionStyle.cancel, handler:{
            
        })
        
        presentAlert(withTitle: "Cocinar", message: "Confirma su pedido?", preferredStyle: WKAlertControllerStyle.alert, actions: [okAction, cancelAction])
    }
    
    func resetPizza() -> Void {
        //presentController(withName: "InterfaceController", context: nil)
        //self.dismiss()
        let okAction = WKAlertAction(title: "ok", style: WKAlertActionStyle.default, handler: {
            self.popToRootController()
        })
        presentAlert(withTitle: "Pizza", message: "Gracias por preferirnos!!", preferredStyle: WKAlertControllerStyle.alert, actions: [okAction])
        
    }
        
        
    
    
    
}
