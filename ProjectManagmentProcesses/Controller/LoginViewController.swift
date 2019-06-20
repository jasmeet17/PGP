//
//  LoginViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit
import Firebase


//NEED TO CHANGE SEGWAYS TO BE PUSH???

//NEED TO SOMEHOW INCLUDE LOG OUT BUTTON
//EVERYWHERE

class LoginViewController: UIViewController {
    
    //MARK: - Outlets

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    //MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Firebase Code
    
    @IBAction func logInPressed(_ sender: UIButton) {
    
        Auth.auth().signIn(withEmail: userNameTextField.text!, password: passWordTextField.text!) { (user, error) in
            
            if(error != nil){
                let alertController = UIAlertController(title: "Error", message:
                    "Invalid credentials!", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                
                self.present(alertController, animated: true, completion: nil)
            }else{
                self.performSegue(withIdentifier: "goToMenuOne", sender: nil)
            }
        }
        
    }
    
    
    //LOGGING OUT OF FIREBASE
    
    /*
    @IBAction func logOutPressed(_sender: AnyObject){
        
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
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
