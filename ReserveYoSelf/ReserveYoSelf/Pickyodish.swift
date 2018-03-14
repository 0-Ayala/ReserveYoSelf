//
//  Pickyodish.swift
//  ReserveYoSelf
//
//  Created by Warrick, Avaree on 3/14/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import UIKit

class Pickyodish: UIViewController {

    @IBOutlet weak var dish: UITextField!
    @IBOutlet weak var dropDown: UIPickerView!
    
    var meals = ["Pasta", "Soupz", "Grains", "Raw Onions"]
    
    @IBOutlet weak var list: UITextView!
    @IBOutlet weak var addBool: UIButton!
    
    var temp = ""
    var x = "x"
    var quant = ""
    
    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var quantityTEXT: UITextField!
    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        quantityTEXT.resignFirstResponder()
    }
    
    //list needs to be an array that hosts an x between the description and quantity
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
        }
    }
    
    
    
    @IBAction func addItem(_ sender: UIButton) {
        var complete =  "x" + quant
        if(sender.isEnabled){
            if(quant != "") {
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
                let message = "Your input for Quantity is invalid"
                let alertController = UIAlertController(title: title,
                                                        message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(
                    title:"OK", style: .cancel, handler: nil))
                present(alertController, animated: true, completion: nil)
                
            }
        }
    }
    
    
    @IBAction func quantityText(_ sender: UITextField) {
        if(sender.text != ""){
            quant = sender.text!;
        }
        
    }
    
    @IBAction func clearAction() {
        for tf in textFields {
            tf.text = ""
        }
        quant = ""
    }
   
    //--------------------------------------------------------
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
        
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        return meals.count
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.view.endEditing(true)
        temp_meal = meals[row]
        return meals[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.dish.text = self.meals[row]
        self.dropDown.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if dish == self.dish {
            self.dropDown.isHidden = false
            //if you dont want the users to se the keyboard type:

            textField.endEditing(true)
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
