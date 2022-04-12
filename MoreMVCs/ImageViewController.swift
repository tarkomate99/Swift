//
//  ImageViewController.swift
//  MoreMVCs
//
//  Created by Student on 2021. 10. 25..
//  Copyright © 2021. vemwaat. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    var path: String = ""
    
    @IBOutlet var imagePath: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the
        imagePath.image = UIImage(named: path)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
