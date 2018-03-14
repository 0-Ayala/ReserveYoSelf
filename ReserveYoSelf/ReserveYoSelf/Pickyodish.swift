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
    
    var meals = ["Pasta", "Soupz", "Grains", "Raw Onions","Squid", "Wine in a can", "Football"]
    
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
        _ = selected
        var complete =  selected + "x" + quant
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
    
    @IBOutlet var MyPickerView: UIPickerView!
    var selected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyPickerView.delegate = self as? UIPickerViewDelegate
        MyPickerView.dataSource = self as? UIPickerViewDataSource
        
        selected = meals[0] // setting the default value
        
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meals.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(meals[row])"
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected = meals[row]
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

