//
//  QuestionViewController.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//


//SV PROGRESSHUD - S9 - L101 !!!

import UIKit
import Firebase
import SVProgressHUD //heads up display.?

class QuestionViewController: UIViewController {

    //receiving these from menu and passing them on to results
    
    var testArea = ""
    var testProcess = ""
    
    var selectedTestName = ""  //at this point we don't care for any other questions on the Bank.
    var allQuestions = Bank()
    
    var hasBeenAsked = [Int]()
    
    //CREATE ANOTHER VARIABLE AS RANDOMLYGENERATEDINDEX.
    var randomlyGeneratedIndex : Int = 0
    
    //REFACTOR AS NUMBEROFQUESTIONSASKED
    var numberOfQuestionsAsked : Int = 0 //we have this state variable  ***
    
    var numberOfQuestions = 0
    
    //***
    //WHICH WILL I USE?
    var correctAnswers = 0 // how many correct answers
                           // connected to 'score'.
    var incorrectAnswers = 0
    
    var score = Float(0.0) //*** didnt have this originally !!!
    //***
    
    var expectedAnswer = ""
    
    var questionsList = [Question]()
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var testReminderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        print("Selected Test Name : \(selectedTestName)")
        // Do any additional setup after loading the view.
        
        testReminderLabel.text = selectedTestName
        
                                                                            //FOR RANDOMIZATION
        questionsList = (allQuestions.dictionary[selectedTestName]?.list)!  //HERES THE LIST
        
        numberOfQuestions = (questionsList.count)                          //HERES THE NUMBER OF Q'S
                                                                           //CREATE arc4random(numberOfQuestions)
        //***find how to do this better later.
        for _ in 0...numberOfQuestions-1{ //0 1 2 3 4 (for 5 elements) e.g. count = 5.
            hasBeenAsked.append(0)         // will change from 0 to 1 if this question has been asked.
        }                                  //so program knows not to ask it again.
        
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
    
    
    //can update this later
    // they are using sender.tag --- NOT the title of the button !
    //1, 2, 3, 4 are the tags.
    
    @IBAction func answerSelected(_ sender: UIButton) {
    
        var answerGiven : String = ""
        answerGiven = sender.currentTitle!
        checkAnswer(answerGiven: answerGiven) //just gives feedback based on the answer
        nextQuestion() //this verifies that we are under the total number of questions // updates ui
                       //increments the question index.
    }
    
    
    // *** we could put our sv progress hud code here ?
    
    //function giveFeedback  will show whether the answer given was correct or incorrect
    func checkAnswer(answerGiven: String){
        //dummy function for now
        
        var isCorrect : Bool = false
        
        if answerGiven == expectedAnswer {isCorrect = true}
        
        if(!isCorrect){
            incorrectAnswers = incorrectAnswers + 1
            print("Answer Given : \(answerGiven)")
            print("Expected Answer: \(expectedAnswer)")
            
            /*instead of this do svprogresshud*/
            print("Incorrect Answer")
            SVProgressHUD.showError(withStatus: "Incorrect!")

        }else{
            correctAnswers = correctAnswers + 1
            print("Answer Given : \(answerGiven)")
            print("Expected Answer: \(expectedAnswer)")
            
            /*instead of this do svprogresshud*/
            print("Correct Answer")
            SVProgressHUD.showSuccess(withStatus: "Correct!")

        }
        
    }
    
    
    //function update ui
    //will move on to the next question visually
    //as well as give visual feedback to the user
    //progress bar and question number somewhere on screen
    
    //responsible for progressing to the next question
    //fix this !!!
    func nextQuestion(){
        
        /*
         S9 L 98 they do things different they check
         whether the count is over N here (question Number)
         */
        /*they show how to implement an 'alert' */
        
        //dummy for now, but can flesh out like quizzler
        
        
        if numberOfQuestionsAsked < numberOfQuestions-1 {
            
            numberOfQuestionsAsked += 1 //we have this state variable
            //potential problem right now - : returns -1.
            randomlyGeneratedIndex = findQuestion() //will determine which question hasn't been asked yet (randomize order)
            
            print("randomlyGeneratedIndex: \(randomlyGeneratedIndex)")

            //state elements must change
            expectedAnswer = questionsList[randomlyGeneratedIndex].correctAnswer
            hasBeenAsked[randomlyGeneratedIndex] = 1 //mark as 'asked'
            
            print("hasBeenAsked: \(hasBeenAsked)")

            updateUI() //this uses the randomlyGeneratedIndex and numberOfQuestionsAsked count to display .
                       //it also actually sets which is the correct answer for the question to be asked.
            
        }else{
        
            //dont go to next question INSTEAD
            //perform segue to results
            performSegue(withIdentifier: "goToResults", sender: self)
            
        }
        
    }
    
    //will loop until it finds a question that hasn't been asked yet.
    func findQuestion() -> Int{
        var chosen = -1 //have a negative int indicating we have no result yet.
        
        while chosen < 0 {
            
            chosen = Int(arc4random_uniform(UInt32(numberOfQuestions))) //e.g from 0 to numberofquestions-1
            
            if hasBeenAsked[chosen] == 1 {
                //do not set chosen as the index
                chosen = -1 //reset it - it's not correct (been asked already)
            }else if hasBeenAsked[randomlyGeneratedIndex] == 0{
                //set chosen as the index.
                //e.g. just let it be whatever was assigned to it
                //it should break out of the loop.
            }
            
        }
        
        return chosen
        
    }
    
    //**IMPORTANT -- MARK WHICH QUESTIONS HAVE BEEN ASKED HERE.
    
    func updateUI(){
        
        //S9 L 100
        
        print("correct answers \(correctAnswers) , incorrect answers \(incorrectAnswers),  numbero of q's : \(numberOfQuestions)")
        
        
        score = (Float(correctAnswers)/Float(numberOfQuestions))*100.0
        
        scoreLabel.text = String(format: "Score : %.2f", score)
        
        //these UI elements depend on the num of questions asked
        
        progressLabel.text = "\(numberOfQuestionsAsked+1)/\(numberOfQuestions)"
        //hopefully this works?
        progressBar.frame.size.width = (view.frame.size.width/CGFloat(numberOfQuestions)) * CGFloat(numberOfQuestionsAsked+1)
        
        
        //these UI elements depend on the randomly selected index.
        
        questionLabel.text = questionsList[randomlyGeneratedIndex].questionText
        
        //this is super important -
        
    }
    
    // implement this?
    func startOver(){
        
    }
    
    //declare prepare for segue to results page.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults" {
            
            let destinationVC = segue.destination as! ResultsViewController
            
            //recalculating it here just for safety...
            //destinationVC.score = (Float(correctAnswers)/Float(numberOfQuestions))*100.0
            
            //could try
            destinationVC.score = score

            
            //simply passing these on to be able
            //to store details in realm.
            destinationVC.testArea = testArea
            
            destinationVC.testProcess = testProcess
            
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
