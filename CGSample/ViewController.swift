//
//  ViewController.swift
//  CGSample
//
//  Created by Vansa Pha on 11/28/16.
//  Copyright © 2016 Vansa Pha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickShape(_ sender: UIButton) {
        let myView = RectView(frame: CGRect(x: 25, y: 200, width: 280, height: 250), shape: sender.tag)
        myView.backgroundColor = UIColor.red
        view.addSubview(myView)
    }

}

