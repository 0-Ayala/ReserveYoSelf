//
//  Pickyodish.swift
//  ReserveYoSelf
//
//  Created by Warrick, Avaree on 3/14/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class Pickyodish: UIViewController {

    @IBOutlet weak var dish: UITextField!;
    @IBOutlet weak var list: UILabel!
    @IBOutlet weak var addBool: UIButton!
    
    var temp = ""
    var x = "x"
    var quant = ""
    var descrip = ""
    
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var quantityTEXT: UITextField!
    
    @IBAction func keyBoardExit(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        quantityTEXT.resignFirstResponder()
    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
  
    @IBAction func newList(_ sender: UIButton) {
        if(sender.isEnabled){
            list.text = "";
            if(list.text == ""){
                list.text = "No dishes selected";
            }
        }
    }
    
    @IBAction func newItem(_ sender: UIButton) {
        if(sender.isEnabled){
            quantityTEXT.text = ""
            dish.text = ""
        }
    }
    
    
    @IBAction func addItem(_ sender: UIButton) {
        var complete = descrip + " x " + quant
        temp_meal = complete
        if(sender.isEnabled){
            if(descrip != "" || quant != "") {
                if(list.text != "No dishes selected") {
                    list.text! += "\(complete + "\n")";
                } else {
                    list.text! = "\(complete + "\n")";
                }
                clearAction()
                complete = ""
            }
            else {
                let title = "Input Error"
                let message = "Your input for Description and Quantity is invalid"
                let alertController = UIAlertController(title: title,
                                                        message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(
                    title:"OK", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
                
            }
        }
    }
    
    
    @IBAction func quantityText(_ sender: UITextField) {
        
        if(sender.text != "" && (sender.text?.count)! < 3){
            quant = sender.text!;
        }
        
    }
    
    @IBAction func descriptionText(_ sender: UITextField) {
        if(sender.text != ""){
            descrip = sender.text!;
        }
    }
    
    @IBAction func clearAction() {
        for tf in textFields {
            tf.text = ""
        }
        quant = ""
        descrip = ""
    }
   
    //--------------------------------------------------------
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

