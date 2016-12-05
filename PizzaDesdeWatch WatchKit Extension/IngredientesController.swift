//
//  IngredientesController.swift
//  PizzaDesdeWatch
//
//  Created by Oscar Javier Olivos on 3/12/16.
//  Copyright © 2016 Oscar Javier Olivos. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {

    var cantidadIngredientes : Int = 0
    var ingredientesSeleccionados:[String] = ["Jamon"]
    var pizza = Pizza.init()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
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

    
    @IBAction func jamonChange(_ value: Bool) {
        if value{
            cantidadIngredientes += 1;
            //print(cantidadIngredientes)
            ingredientesSeleccionados.append("Jamon")
        }else{
            cantidadIngredientes -= 1;
            //print(cantidadIngredientes)
            let index: Int = (ingredientesSeleccionados.index(of: "Jamon"))!
            //print(index)
            ingredientesSeleccionados.remove(at: index)
        }
    }
    
    @IBAction func peperoniChange(_ value: Bool) {
        if value{
            cantidadIngredientes += 1;
            //print(cantidadIngredientes)
            ingredientesSeleccionados.append("Peperoni")
        }else{
            cantidadIngredientes -= 1;
            //print(cantidadIngredientes)
            let index: Int = (ingredientesSeleccionados.index(of: "Peperoni"))!
            //print(index)
            ingredientesSeleccionados.remove(at: index)
        }
    }
    
    
    @IBAction func paboChange(_ value: Bool) {
        if value{
            cantidadIngredientes += 1;
            //print(cantidadIngredientes)
            ingredientesSeleccionados.append("Pavo")
        }else{
            cantidadIngredientes -= 1;
            //print(cantidadIngredientes)
            let index: Int = (ingredientesSeleccionados.index(of: "Pavo"))!
            //print(index)
            ingredientesSeleccionados.remove(at: index)
        }
    }

    @IBAction func salchichaChange(_ value: Bool) {
        if value{
            cantidadIngredientes += 1;
            //print(cantidadIngredientes)
            ingredientesSeleccionados.append("Salchicha")
        }else{
            cantidadIngredientes -= 1;
            //print(cantidadIngredientes)
            let index: Int = (ingredientesSeleccionados.index(of: "Salchicha"))!
            //print(index)
            ingredientesSeleccionados.remove(at: index)
        }
    }
    @IBAction func aceitunaChange(_ value: Bool) {
        if value{
            cantidadIngredientes += 1;
            //print(cantidadIngredientes)
            ingredientesSeleccionados.append("Aceitunas")
        }else{
            cantidadIngredientes -= 1;
            //print(cantidadIngredientes)
            let index: Int = (ingredientesSeleccionados.index(of: "Aceitunas"))!
            //print(index)
            ingredientesSeleccionados.remove(at: index)
        }
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
            pizza.ingredientes = ingredientesSeleccionados
            //print(pizza.tamano)
            return pizza
    }
}
