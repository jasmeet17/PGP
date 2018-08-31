//
//  TestData.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-30.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import Foundation

import RealmSwift

//have to subclass this for to be able to persist.

class TestData : Object{
    
    
    /*var list = [Question]()
    */
 
    //what data do we need for the test?
    
    @objc dynamic var date : String = ""//Date().description//.description //does this work?
    //var time : String = Timer().description //NO IDEA if this works. ignoring for now
    @objc dynamic var testName : String = ""
    
    @objc dynamic var testScore : Float = 0.0
 
    //date is initialized when test data is init-ed.
    /*init(testNameParam : String, testScoreParam: Float){
        date = Date().description
        testName = testNameParam
        testScore = testScoreParam
     }*/
    
    

}
