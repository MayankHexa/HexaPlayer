//
//  ViewController.swift
//  HexaPlayer
//
//  Created by MayankHexa on 07/30/2025.
//  Copyright (c) 2025 MayankHexa. All rights reserved.
//

import UIKit
import HexaPlayer

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    var playerSDK = HexaPlayerPlatformSDK()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playerSDK.view.frame = containerView.bounds
        containerView.addSubview(playerSDK.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

