//
//  Bank.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-15.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import Foundation


//idea = could declare all the questions here,
//and then just make sure the name matches the question bank

class Bank {

    
    //could declare question bank and append questions to the list property in it.
    
    //afterwards, let the init do its job.
    
    //not set in stone, there might be a better way.
    
    var processesArray = [[String]]()
    
    let allProcessesArea1Array = ["Process1","Process2"]//,"Area1Process3"]
    let allProcessesArea2Array = ["Process1","Process2"]//,"Area2Process3"]
    let allProcessesArea3Array = ["Process1","Process2"]//,"Area3Process3"]
    let allProcessesArea4Array = ["Process1","Process2"]//,"Area4Process3"]
    let allProcessesArea5Array = ["Process1","Process2"]//,"Area5Process3"]

    var dictionary = [String:QuestionBank]()
    
    var areaArray = ["Area1", "Area2", "Area3", "Area4", "Area5"]
    
    //have 10 testnames now
    var testNames = ["Area1Process1","Area1Process2","Area2Process1","Area2Process2", "Area3Process1", "Area3Process2","Area4Process1", "Area4Process2", "Area5Process1", "Area5Process2"]
    
    var questionBanks = [QuestionBank]()//<Question>[] // or [Question]
    
    var area1Process1QuestionBank = QuestionBank()
    var area1Process2QuestionBank = QuestionBank()

    var area2Process1QuestionBank = QuestionBank()
    var area2Process2QuestionBank = QuestionBank()

    var area3Process1QuestionBank = QuestionBank()
    var area3Process2QuestionBank = QuestionBank()
    
    var area4Process1QuestionBank = QuestionBank()
    var area4Process2QuestionBank = QuestionBank()
    
    var area5Process1QuestionBank = QuestionBank()
    var area5Process2QuestionBank = QuestionBank()
    
    init(){//testNames : [String], questionBanks : [QuestionBank] ) {
        
        //have 10 question banks - so it matches for now.
        
        area1Process1QuestionBank.list.append(Question(text: "Area1Process1Question1",answer: "Entrada"))
        area1Process1QuestionBank.list.append(Question(text: "Area1Process1Question2",answer: "Salida"))
        area1Process1QuestionBank.list.append(Question(text: "Area1Process1Question3",answer: "Herramienta"))
        area1Process1QuestionBank.list.append(Question(text: "Area1Process1Question4",answer: "Tecnica"))
        questionBanks.append(area1Process1QuestionBank)
        
        area1Process2QuestionBank.list.append(Question(text: "Area1Process2Question1",answer: "Entrada"))
        area1Process2QuestionBank.list.append(Question(text: "Area1Process2Question2",answer: "Salida"))
        area1Process2QuestionBank.list.append(Question(text: "Area1Process2Question3",answer: "Herramienta"))
        area1Process2QuestionBank.list.append(Question(text: "Area1Process2Question4",answer: "Tecnica"))
        questionBanks.append(area1Process2QuestionBank)
        
        area2Process1QuestionBank.list.append(Question(text: "Area2Process1Question1",answer: "Entrada"))
        area2Process1QuestionBank.list.append(Question(text: "Area2Process1Question2",answer: "Salida"))
        area2Process1QuestionBank.list.append(Question(text: "Area2Process1Question3",answer: "Herramienta"))
        area2Process1QuestionBank.list.append(Question(text: "Area2Process1Question4",answer: "Tecnica"))
        questionBanks.append(area2Process1QuestionBank)
        
        area2Process2QuestionBank.list.append(Question(text: "Area2Process2Question1",answer: "Entrada"))
        area2Process2QuestionBank.list.append(Question(text: "Area2Process2Question2",answer: "Salida"))
        area2Process2QuestionBank.list.append(Question(text: "Area2Process2Question3",answer: "Herramienta"))
        area2Process2QuestionBank.list.append(Question(text: "Area2Process2Question4",answer: "Tecnica"))
        questionBanks.append(area2Process2QuestionBank)

        area3Process1QuestionBank.list.append(Question(text: "Area3Process1Question1",answer: "Entrada"))
        area3Process1QuestionBank.list.append(Question(text: "Area3Process1Question2",answer: "Salida"))
        area3Process1QuestionBank.list.append(Question(text: "Area3Process1Question3",answer: "Herramienta"))
        area3Process1QuestionBank.list.append(Question(text: "Area3Process1Question4",answer: "Tecnica"))
        questionBanks.append(area3Process1QuestionBank)
        
        area3Process2QuestionBank.list.append(Question(text: "Area3Process2Question1",answer: "Entrada"))
        area3Process2QuestionBank.list.append(Question(text: "Area3Process2Question2",answer: "Salida"))
        area3Process2QuestionBank.list.append(Question(text: "Area3Process2Question3",answer: "Herramienta"))
        area3Process2QuestionBank.list.append(Question(text: "Area3Process2Question4",answer: "Tecnica"))
        questionBanks.append(area3Process2QuestionBank)

        area4Process1QuestionBank.list.append(Question(text: "Area4Process1Question1",answer: "Entrada"))
        area4Process1QuestionBank.list.append(Question(text: "Area4Process1Question2",answer: "Salida"))
        area4Process1QuestionBank.list.append(Question(text: "Area4Process1Question3",answer: "Herramienta"))
        area4Process1QuestionBank.list.append(Question(text: "Area4Process1Question4",answer: "Tecnica"))
        questionBanks.append(area4Process1QuestionBank)

        area4Process2QuestionBank.list.append(Question(text: "Area4Process2Question1",answer: "Entrada"))
        area4Process2QuestionBank.list.append(Question(text: "Area4Process2Question2",answer: "Salida"))
        area4Process2QuestionBank.list.append(Question(text: "Area4Process2Question3",answer: "Herramienta"))
        area4Process2QuestionBank.list.append(Question(text: "Area4Process2Question4",answer: "Tecnica"))
        questionBanks.append(area4Process2QuestionBank)

        area5Process1QuestionBank.list.append(Question(text: "Area5Process1Question1",answer: "Entrada"))
        area5Process1QuestionBank.list.append(Question(text: "Area5Process1Question2",answer: "Salida"))
        area5Process1QuestionBank.list.append(Question(text: "Area5Process1Question3",answer: "Herramienta"))
        area5Process1QuestionBank.list.append(Question(text: "Area5Process1Question4",answer: "Tecnica"))
        questionBanks.append(area5Process1QuestionBank)

        area5Process2QuestionBank.list.append(Question(text: "Area5Process2Question1",answer: "Entrada"))
        area5Process2QuestionBank.list.append(Question(text: "Area5Process2Question2",answer: "Salida"))
        area5Process2QuestionBank.list.append(Question(text: "Area5Process2Question3",answer: "Herramienta"))
        area5Process2QuestionBank.list.append(Question(text: "Area5Process2Question4",answer: "Tecnica"))
        questionBanks.append(area5Process2QuestionBank)

        processesArray.append(allProcessesArea1Array)
        processesArray.append(allProcessesArea2Array)
        processesArray.append(allProcessesArea3Array)
        processesArray.append(allProcessesArea4Array)
        processesArray.append(allProcessesArea5Array)
        

        //getting an index out of bounds here.
        //couldve been because my questionBanks is nil e.g. has no elements in it.
        
        for index in 0...testNames.count-1{
         
            dictionary[testNames[index]] = questionBanks[index]
            
            //e.g. dictionary["key"] = "value" (any obj , etc)
            
        }

        
    }
    
}
