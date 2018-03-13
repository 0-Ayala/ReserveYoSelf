//
//  ReservationDetails.swift
//  ReserveYoSelf
//
//  Created by Olivia Ayala on 3/13/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class ReservationDetails: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var table: UILabel!
    @IBOutlet weak var dish: UILabel!
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        name.text = selectedRes.name
        date.text = selectedRes.date.description
        dish.text = selectedRes.meal
        table.text = String(selectedRes.table)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
