//
//  Question.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//


//how to declare a class here?

import Foundation


//do we really need a ''question Number '' -- quizzler didn't have it... hmmm..., just traversed the
// array each iteration. (Check later)

class Question {
    
    
    //@objc something or other
    let questionText : String
    //let questionNumber : Int
    let correctAnswer : String //entrada salida etc... (not just true or false...)
    
    init(text : String, answer : String) {//number: Int ,answer : Bool) {
        questionText = text
        //questionNumber = number
        correctAnswer = answer
    }
    
}


/*
 
 
 class Question {
 
     let answer : Bool
     let questionText : String
 
     init(text : String, correctAnswer : Bool) {
         questionText = text
         answer = correctAnswer
     }
 
 }

 
 */
