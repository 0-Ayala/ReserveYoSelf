//
//  NameAndTimeViewController.swift
//  ReserveYoSelf
//
//  Created by Warrick, Avaree on 3/12/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit
import UserNotifications

class NameAndTimeViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    
    //confirsms reservation, creates the reservation in app delegate.
    @IBAction func confirmButton(_ sender: UIButton) {
        if ((nameText.text?.count)! == 0){
            alertCancel()
        } else if ((nameText.text?.count)! > 17) {
            alertTooLong()
        } else {
            temp_name = nameText.text!
            reservationList.append(Reservation(name: temp_name, reserveDate: temp_date, meal: temp_meal, table: Int(temp_table)))
            
            notification(inSeconds: 1) { (success) in
                if success {}
            }
        }
    }
    
    //push notification message.
    func notification(inSeconds: TimeInterval, completion: @escaping (_ Success: Bool) -> ()) {
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: inSeconds, repeats:false)
        
        let content = UNMutableNotificationContent()
        content.title = "Reservation Confirmed"
        content.body = "We've recieved your reservation, \(nameText.text!) "
        
        let request = UNNotificationRequest(identifier: "customNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) {
            (error) in
            if (error != nil) {
                completion(false)
            } else {
                completion (true)
            }
        }
    }
    
    @IBAction func keyBoardExit(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    func alertCancel() {
        let title = "Error"
        let message = "Text field 'NAME' needs to be filled in"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(
            title:"Okay", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    func alertTooLong() {
        let title = "Error"
        let message = "Text field 'NAME' can't be that long. Please abbreviate your name."
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(
            title:"Okay", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
