//
//  ViewController.swift
//  MoreMVCs
//
//  Created by Student on 2020. 10. 27..
//  Copyright © 2020. vetrabm. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let images : Dictionary<Sting, String> = [
    "bolyai" = "bolyai.jpg"
    "irinyi" = "irinyi.jpg"
    "rektori" = "rektori.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationvc = segue.destination
        if let identifier = sague.identifier{
            
        }
    }
}

