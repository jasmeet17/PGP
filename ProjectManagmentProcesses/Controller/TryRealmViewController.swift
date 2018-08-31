//
//  TryRealmViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-31.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit
import RealmSwift

class TryRealmViewController: UIViewController {

    
    
    @IBOutlet weak var testNameTextField: UITextField!
    
    @IBOutlet weak var testScoreTextField: UITextField!  //need to cast to float
    
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var readButton: UIButton!
    
    @IBOutlet weak var updateButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    //could be not an issue
    let realm = try! Realm()

    var testData = TestData()
    
    //var moddedTestData = TestData()
    
    //this must be changed later
    var resultsList : Results<TestData>!//() //this is so we can use this results list elsewhere and not just inside the method.
    //this unwrapping is non ideal and will have to be changed if used code to populate our tableView
    
    //nil coalescing operator
    //var resultsList : Results<TestData>?//() //this is so we can use this results list elsewhere and not just inside the method.
    //the problem is that maybe we didn't call loadCategories
    //so then in numberOfRows in table view we need to do return list?.count ?? 1 // like in case it is nil return 1...
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //initializing realm
        /*do{
            let realm = try Realm()
            
        }catch{
            print("Error : \(error)")
        }*/
        
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
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        //would occur on its own when
        //we finish a test
        //could create a method
        //called save(testName, testScore)
        if sender == createButton {
            
            do{
                try realm.write { // can throw. mark with try.
                    testData.date = Date().description
                    testData.testName =  testNameTextField.text!
                    testData.testScore = Float(testScoreTextField.text!)!
                    realm.add(testData)
                    print("testData: date: \(testData.date) , name:\(testData.testName), score: \(testData.testScore)")
                }
                
            }catch{
                print("Error creating (C) into realm")
            }
            
        }
        
        //would occur when
        //we have to populate
        //the table view
        //like... load from there somehow.
        //in sample app they have
        //loadCategories method.
        //we can have loadResults method
        //this isnt surrounded by try catch
        
        if sender == readButton {
            // results is [TestData]
            // results is <TestData>()
            resultsList = realm.objects(TestData.self)
            
            print("---------------fetchResult:BEGIN-----------")

            
            for result in resultsList {
                print("testData \(resultsList.index(of: result)): date: \(result.date) , name:\(result.testName), score: \(result.testScore)")
            }
            
            print("---------------fetchResult:END-----------")

        }
        
        
        //did selectRow at Index path?
        //s19 L265
        
        //they do like
        //whatever row is selected in tableView
        //will be the one updated.
        //here I guess we can just put in an index number???
        
        if sender == updateButton {
            
            //problem here - if we click this first,
            //we havent 'loadedResults' yet so we need to do that in order for this to work if its
            //the first thing clicked
            resultsList = realm.objects(TestData.self)  // so we definetly need like 'loadResults'

            //create dummy vars and update the previous entry to the
            //realm
            
            let moddedTestDate = Date().description
            let moddedTestName = "moddedTestName"
            let moddedTestScore = 99.9
            
          
            //fn + ctrl+ i to auto indent
            do{
                if(resultsList.count > 0){
                    try realm.write {
                        
                        let testDataToModify : TestData = resultsList[resultsList.count-1] // does this work?
                        //just hardcoding it right now.
                        
                        testDataToModify.date = moddedTestDate
                        testDataToModify.testName = moddedTestName
                        testDataToModify.testScore = Float(moddedTestScore)
                        
                        print("updatedData date: \(resultsList[resultsList.count-1].date) , name:\(resultsList[resultsList.count-1].testName), score: \(resultsList[resultsList.count-1].testScore)")
                        
                    }
                }
                
            }catch{
                print("Error updating (U) entry in realm")
            }
            
        }
        
        
        //idk why but also they're doing it inside
        //did select row at index path method
        
        if sender == deleteButton {
            //remove the realm entry
            
            //same as above for safety
            resultsList = realm.objects(TestData.self)  // so we definetly need like 'loadResults'
            
            //fn + ctrl+ i to auto indent
            do{
                if(resultsList.count > 0){
                    try realm.write { // can throw. mark with try.
                        realm.delete(resultsList[resultsList.count-1])
                        //finish this
                        //hardcoded for now
                        //in tableview whichever row is selected
                        //will be the deleted one.
                    }
                }
                
            }catch{
                print("Error deleting (D) realm entry")
            }
            
        }
        
    }
    

}
