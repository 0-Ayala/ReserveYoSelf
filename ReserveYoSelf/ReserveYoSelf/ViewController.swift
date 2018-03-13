//
//  ViewController.swift
//  ReserveYoSelf
//
//  Created by artur oganezov on 3/11/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func switchBack(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

