//
//  ImageViewController.swift
//  MoreMVCs
//
//  Created by Student on 2019. 10. 21..
//  Copyright © 2019. vetrabm. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var image: String = ""
    
    @IBOutlet var imageView: UIImageView!
    
    let pinchRec = UIPinchGestureRecognizer()
    let tapRec = UITapGestureRecognizer()

    @objc func pinchedView(sender: UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1.0
    }
    
    @objc func tappedView(sender: UITapGestureRecognizer) {
        if (sender.view?.transform.a == 1.0 && sender.view?.transform.d == 1.0) {
            sender.view?.transform = (sender.view?.transform.scaledBy(x: 2.0, y: 2.0))!
        } else {
            sender.view?.transform.a = 1.0
            sender.view?.transform.d = 1.0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named: image)
        
        pinchRec.addTarget(self, action: #selector(pinchedView))
        imageView.addGestureRecognizer(pinchRec)
        
        tapRec.addTarget(self, action: #selector(tappedView))
        imageView.addGestureRecognizer(tapRec)
        tapRec.numberOfTapsRequired = 2
        
        imageView.isUserInteractionEnabled = true
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
