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
    
    var res: Reservation?
   

    override func viewWillAppear(_ animated: Bool) {
        if let r = res {
            name.text = r.name
            date.text = r.date.description
            dish.text = r.meal
            table.text = String(r.table)
        }
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
