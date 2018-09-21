//
//  MenuOneViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-19.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit

class MenuOneViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    var allQuestions = Bank()
    
    var currentSelectedArea = "" //just having a default
    
    var areasArray = [String]()//allQuestions.areaArray
    
    @IBOutlet weak var areaPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        areasArray = allQuestions.areaArray
        areaPicker.delegate = self
        areaPicker.dataSource = self
        currentSelectedArea = areasArray[0] //preventing a crash
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
    
    // MARK:- PickerView Methods (Delegate and Datasource)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        //just ONE COLUMN.
        return 1
   
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return areasArray.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return areasArray[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        currentSelectedArea = areasArray[row]
        
        print("AreaSelected : \(currentSelectedArea)")
    }
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToMenu", sender: self)
        
    }
    
    //HOW DO I USE THIS???
    //section 13 lecture 157
    //7.44
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "goToMenu"{
            
            let destinationVC = segue.destination as! MenuViewController
            
            print("Preparing for segue, currentSelectedArea : \(currentSelectedArea)")
            
            destinationVC.areaSelected = currentSelectedArea
            
            //.areaSelected = currentSelectedArea!
            //have to unwrap as an optional?
            
            //the current selection
            
            
        }
        
       
    }
 
    
    @IBAction func showPreviousResultsPressed(_ sender: UIButton) {
        
        
        
        performSegue(withIdentifier: "goToPreviousResultsOne", sender: self)
        
    }
    /*
     @IBAction func logOutPressed(_ sender: UIButton) {
         do{
         try Auth.auth().signOut()
         //navigate back to the root view controller
         navigationController?.popToRootViewController(animated: true)
         }
         catch{
         print("error, problem signign out")
         }
     }
     
     */

}
