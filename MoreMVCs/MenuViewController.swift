//
//  ViewController.swift
//  MoreMVCs
//
//  Created by Student on 2021. 10. 25..
//  Copyright © 2021. vemwaat. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let images: Dictionary<String, String> = [
        "bolyai": "bolyai.jpg",
        "irinyi": "irinyi.jpg",
        "rektori": "rektori.jpg",
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as? ImageViewController
        
        if let identifier = segue.identifier {
            if let filename = images[identifier] {
                destinationVC?.path = filename
                destinationVC?.title = identifier
            }
        }
    }
    
    //valami
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

