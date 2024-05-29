//
//  DataManager.swift
//  Assignment_6
//
//  Created by E5000861 on 28/05/24.
//Create a class called DataManager with a private initializer.
//Test your singleton by storing and retrieving data from different parts of your code and print student dictionary.

import Foundation

class DataManager {
    static let shared =  DataManager()
    init(){
        
    }
    
    var student : [String:Any] = [:]
    func store(name:String,age:Int,ispresent:Bool){
        student["name"]  = name
        student["age"]  = age
        student["present"]  = ispresent
    }
   
    func retrieve() -> [String:Any] {
        return student
    }
}
