//
//  PreviousResultsTableViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit
import Firebase
import RealmSwift

class PreviousResultsTableViewController: UITableViewController{//, UITableViewDelegate, UITableViewDataSource  {

    
    //link IBOUTLETS
    
    //could be not an issue
    let realm = try! Realm()
    
    //this must be changed later
    var resultsList : Results<TestData>?//() //this is so we can use this results list elsewhere and not just inside the method.
    //this unwrapping is non ideal and will have to be changed if used code to populate our tableView
    
    @IBOutlet var resultsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO : Set yourself as delegate
        resultsTableView.delegate = self
        resultsTableView.dataSource = self
        
        
        //careful possible bugs for typos
        //register CustomResultsCell .Xib file here
        resultsTableView.register(UINib(nibName: "CustomResultsCell", bundle: nil), forCellReuseIdentifier: "customResultCell")
        
        let nib = UINib(nibName: "CustomHeaderFooterViewCell", bundle: nil)
       
        resultsTableView.register(nib, forHeaderFooterViewReuseIdentifier: "CustomHeaderFooterViewCell")

    
        //makes the cells fit the content
        
        loadResults() // gotta call this so we have something to display in the table.
        
        configureTableView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        //expects number of cells we want...
        
        return resultsList?.count ?? 1 // we have more stuff.
    }
    
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        //return cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customResultCell", for: indexPath) as! CustomResultsCell
        
        //let resultsArray = []
        
        if let item = resultsList?[indexPath.row]{
            
            cell.dateLabel.text = item.date
            
            cell.testArea.text = item.testArea
            
            cell.testProcess.text = item.testProcess
            
            cell.resultsLabel.text = "\(item.testScore)"
        } else {
            cell.dateLabel.text = ""
            
            cell.testArea.text = "No Test Taken"
            
            cell.testProcess.text = ""
            
            cell.resultsLabel.text = ""
        }
        
        return cell
    }
    

    //func loadResults() uses realm to fetch all the existing TestData instances.
    func loadResults(){
        
        // results is [TestData]
        // results is <TestData>()
        resultsList = realm.objects(TestData.self)
        
        print("---------------loadResults():BEGIN-----------")
        
        //hmm not sure wtf
        for result in resultsList! {
            print("testData: date: \(result.date) , area:\(result.testArea), process:\(result.testProcess), score: \(result.testScore)")
        }
        
        print("---------------loadResults():END-----------")
    }
    

    //adjust cell size to the size of the content in the
    //results text.
    //don't know if this works.
    func configureTableView(){
        resultsTableView.rowHeight = UITableViewAutomaticDimension
        resultsTableView.estimatedRowHeight = 120.0
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        
        do{
            try Auth.auth().signOut()
            
            //navigate back to the root view controller
            navigationController?.popToRootViewController(animated: true)
            
        }
        catch{
            print("error, problem signign out")
        }
        
        
    }
    
    
    // MARK: - Table view HEADER (EXPERIMENT!!!)
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        //if section 0 - > use cierta celda
        //
        
        // Here, we use NSFetchedResultsController
        // And we simply use the section name as title
        //let currSection = fetchedResultsController.sections?[section]
        //let title = currSection!.name
        
        let section = 0;
        
        // Dequeue with the reuse identifier
        
        //switch
        /*{
            opt 1
            opt 2
            opt 3
            default
        }*/
        
        if(section == 0){
            let cell = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomHeaderFooterViewCell")
            let header = cell as! CustomHeaderFooterView
            header.customHeaderLabel.text = "custom text for cell"
            
            let myImage = UIImage(named: "HectorAndresPerezVillatoro.png")
            header.customHeaderImage.image = myImage
            
            return cell

        }
        //header.customHeaderImage (no se puede todavia) UI IMAGE
        
        
    }
    
}
