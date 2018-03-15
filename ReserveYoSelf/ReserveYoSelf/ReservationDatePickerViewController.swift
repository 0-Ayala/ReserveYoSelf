//
//  ReservationDatePickerViewController.swift
//  ReserveYoSelf
//
//  Created by artur oganezov on 3/12/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class ReservationDatePickerViewController: UIViewController {
    
    @IBOutlet weak var pickDate: UIDatePicker!
    
    //@IBOutlet weak var dateLabel: UILabel!
    
//    //doesn't work
//    @IBAction func reserevDate(_ sender: UIButton) {
//
//    }
    @IBAction func reserveDate(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let myString = formatter.string(from: pickDate.date)
        let yourDate = formatter.date(from: myString)
        formatter.dateFormat = "dd-MMM-yyyy HH:mm"
        let myStringafd = formatter.string(from: yourDate!)
        temp_date = myStringafd
    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickDate.minimumDate = Date.init()
    }

    override func viewDidAppear(_ animated: Bool) {
        //dateLabel.text = Date.init().description
        pickDate.minimumDate = Date.init()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
