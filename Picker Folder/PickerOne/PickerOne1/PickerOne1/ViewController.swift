//
//  ViewController.swift
//  PickerOne1
//
//  Created by MacBook Pro on 13/4/21.
//

import UIKit




class ViewController: UIViewController{
    
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var pickerview: UIPickerView!
    
    var City = ["Dhaka","Willington","Washington","Africa","Arzentinia","Poland"]
    
    var Country = ["Bangladesh","Newzeeland","US","Africa","Arzentinia","Poland"]
    
    var number = [ "1","2","3","4","5","6"]

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.pickerview.delegate = self
        self.pickerview.dataSource = self
    }

    
}


extension ViewController: UIPickerViewDataSource{
        
        
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        
        return 3
        
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
   
        if component == 0 {
            return Country.count
        }
        else if component == 1 {
            
            return City.count
        }
        else
        {
            return number.count
        }
        
    }
}


extension ViewController: UIPickerViewDelegate {
        
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
            
            
            if component == 0 {
                return Country[row]
            }
            else if component == 1 {
                
                return City[row]
            }
            else
            {
                return number[row]
            }
        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        var cntry = Country[pickerview.selectedRow(inComponent: 0)]
        var cty = City[pickerview.selectedRow(inComponent: 1)]
        var nmbr = number[pickerview.selectedRow(inComponent: 2)]
        if component == 0 {
            
            cntry = Country[row]
        }else if component == 1 {
           cty = City[row]
            
        }else{
            nmbr = number[row]
            
        }
        label1.text = cntry
        label2.text = cty
        label3.text = nmbr
    }
    }
