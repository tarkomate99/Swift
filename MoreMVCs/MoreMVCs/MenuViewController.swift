//
//  ViewController.swift
//  MoreMVCs
//
//  Created by Student on 2019. 10. 21..
//  Copyright © 2019. vetrabm. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let images: Dictionary<String, String> = [
        "irinyi": "irinyi.jpg",
        "bolyai": "bolyai.jpg",
        "rektori": "rektori.jpg"
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
        let destinationVc = segue.destination
        
        if let imageVc = destinationVc as? ImageViewController {
            if let identifier = segue.identifier {
                if let fileName = images[identifier] {
                    imageVc.image = fileName
                    if let sendingButton = sender as? UIButton {
                        imageVc.navigationItem.title = sendingButton.currentTitle
                    }
                }
            }
        }
    }


}

