//
//  QuestionViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit
import Firebase

class QuestionViewController: UIViewController {

    var selectedTestName = ""  //at this point we don't care for any other questions on the Bank.
    var allQuestions = Bank()
    var currentQuestionIndex = 0 //we have this state variable
    var numberOfQuestions = 0
    var correctAnswers = 0 // how many correct answers
    var expectedAnswer = ""
    var questionsList = [Question]()
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Selected Test Name : \(selectedTestName)")
        // Do any additional setup after loading the view.
        
        questionsList = (allQuestions.dictionary[selectedTestName]?.list)!
        
        numberOfQuestions = (questionsList.count)
        
        updateUI() //this will set the question label
                   //to the question in which we are
        
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
    
    @IBAction func answerSelected(_ sender: UIButton) {
    
        var answerGiven : String = ""
        
        if currentQuestionIndex < numberOfQuestions-1 {
            //normal procedure.
            
            //step one get sender .text and compare with expected answer
            answerGiven = sender.currentTitle! //does this work?
            //makes life easier now BUT - probably should
            //do like if sender == entradaButton then answer given - Entrada
            //and like that for every button, but for now this is fine...
            
            //check answer
            checkAnswer(answerGiven: answerGiven)
            
            //update state variables
            currentQuestionIndex += 1 //we have this state variable

            //proceed to the next question
            
            //update ui // or update which question we are looking at basically
            nextQuestion()
            
        }else{
            //we are arguably in the last question
            
            //get sender .text and compare with expected answer
            answerGiven = sender.currentTitle! //does this work?
            
            checkAnswer(answerGiven: answerGiven)
            
            //dont go to next question INSTEAD
            //perform segue to results
            performSegue(withIdentifier: "goToResults", sender: self)
        
        }
    }
    
    //function giveFeedback  will show whether the answer given was correct or incorrect
    func checkAnswer(answerGiven: String){
        //dummy function for now
        
        var isCorrect : Bool = false
        
        if answerGiven == expectedAnswer {isCorrect = true}
        
        if(!isCorrect){
            correctAnswers += 1
            print("Answer Given : \(answerGiven)")
            print("Expected Answer: \(expectedAnswer)")
            print("Incorrect Answer")

        }else{
            print("Answer Given : \(answerGiven)")
            print("Expected Answer: \(expectedAnswer)")
            print("Correct Answer")
        }
        
    }
    
    
    //function update ui
    //will move on to the next question visually
    //as well as give visual feedback to the user
    //progress bar and question number somewhere on screen
    
    func nextQuestion(){
        
        //dummy for now, but can flesh out like quizzler
        updateUI()
        
    }
    
    func updateUI(){
        
        //set the view question text to the next question
        questionLabel.text = questionsList[currentQuestionIndex].questionText
        
        //set the correct answer to the correct answer for the next question
        expectedAnswer = questionsList[currentQuestionIndex].correctAnswer
        
        //reloadIfNeeded or something like that right?
        //reloadIfNeeded()
        //we need something so that things actually visually change.
        //so that the view reloads
        
    }
    
    //declare prepare for segue to results page.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.score = (Float(correctAnswers)/Float(numberOfQuestions))*100.0
            //huh nevermind...
        }
        
        /*let destinationVC = segue.destination as! QuestionViewController
         destinationVC.selectedTestName = testName  //  [\(testName)] //need to determine what the testname is*/
        
    }
    
  
    @IBAction func logOutPressed(_ sender: UIButton) {
        
        do{
            try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
            
            print("popped")
            
            
        }
        catch{
            print("error, problem signign out")
        }
        
    }
    
    
}
