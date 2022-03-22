//
//  ViewController.swift
//  PizzaProject
//
//  Created by Student on 2022. 03. 22..
//  Copyright © 2022. vemwaat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let pizza = Pizza()
    
    func changeLabel(){
        resultLabel.text = "\(pizza.diameter) cm átmérőjű \(pizza.type) pizza területe: \(pizza.area) cm^2"
    }

    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func changeSize(_ sender: UIButton) {
        
        pizza.diameter = pizza.diameterFromString(size: sender.currentTitle!)
    }
    
    
    @IBAction func changeType(_ sender: UIButton) {
        
         pizza.type = sender.currentTitle!
        
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        changeLabel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

