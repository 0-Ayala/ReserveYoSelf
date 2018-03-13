//
//  NameAndTimeViewController.swift
//  ReserveYoSelf
//
//  Created by Warrick, Avaree on 3/12/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class NameAndTimeViewController: UIViewController {
    //consider bar item over confirm
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBAction func confirmButton(_ sender: UIButton) {
        //what's the difference??
        if((nameText.text?.count)! < 1){
            characterAlert()
        }
        if((nameText.text?.count)! == 0){
            alertCancel()
        }
        temp_name = nameText.text!
        reservationList.append(Reservation(name: temp_name, date: temp_date, meal: temp_meal, table: Int(temp_table)))
    }
    
    //doesn't work
    @IBAction func keyBoardExit(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    @IBAction func alertCancel() {
        let title = "Error"
        let message = "Text field 'NAME' needs to be filled in"
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(
            title:"Okay", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func characterAlert() {
        let title = "Error"
        let message = "Text field 'NAME' needs to have more than 1 character"
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
