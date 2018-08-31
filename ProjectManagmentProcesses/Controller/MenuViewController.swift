//
//  MenuViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-17.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit
import Firebase

class MenuViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource /*, SelectAreaDelegate */{
    
    //might replace this later by adding the tests and testnames to the BANK
    // class. for now i just need a dummy placeholder. hardcoded
    
    var allQuestions = Bank()
    
    var areasArray = [String]()//allQuestions.areaArray //["Area1", "Area2", "Area3", "Area4", "Area5"]
    
    var areaSelected = "" //just having a default
    var processSelected = "" // just having a default
    
    var indexOfArea : Int = 0
    
    var testName = ""

    
    @IBOutlet weak var areaLabel: UILabel!
    
    //passed on frmo the previous view Through segue
    //is there a better way to leave uninitialized?
    
    @IBOutlet weak var processPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        areasArray = allQuestions.areaArray
        
        areaLabel.text = areaSelected
        
        indexOfArea = areasArray.index(of: "\(areaSelected)")!

        
        // Do any additional setup after loading the view.
        
        //areaPicker.delegate = self
        //areaPicker.dataSource = self
        
        //no idea if we can have two pickers in one view.
        processPicker.delegate = self
        processPicker.dataSource = self
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
        return 1//areasArray.count
        //can we have some sort of a conditional statement here?
        
        //can really only return one thing...
        //so i don't think we can have more than one picker
        //in a screen?
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
         return allQuestions.processesArray[indexOfArea].count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return allQuestions.processesArray[indexOfArea][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        processSelected = allQuestions.processesArray[indexOfArea][row] // how does this work?
        //processes array is a [[String]]() e.g 2D array --- indexOfArea Chooses which area and row chooses which process.

        testName = "\(areaSelected)\(processSelected)"
        print("testName : \(testName)")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //prepare for the segue into the question view controller.
        //we need to pass on the correct question bank based on the AREA SELECTED and PROCESS SELECTED
        //so at this point, we really don't need bank anymore for the question view.
        //we just need this current [Question]() that is being passed.
        
        if segue.identifier == "goToQuestion" {
            
            let destinationVC = segue.destination as! QuestionViewController
            destinationVC.selectedTestName = testName  //  [\(testName)] //need to determine what the testname is
        }
        
        
        //ALSO we need to call the segue from when the user clicks start test.
    }
    
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
    
    
    @IBAction func startTestPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToQuestion", sender: self)
    }
    
    
}
