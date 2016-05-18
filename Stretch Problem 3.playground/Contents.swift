//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    let firstName: String
    let lastName: String
    let age: Int
    
    init (firstName: String, lastName: String, age: Int){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        
    }
}


let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
let pongo = Person(firstName: "Pongo", lastName: "Dalmation", age: 6)
let kip = Person(firstName: "Kip", lastName: "Parsons", age: 35)

var clubMembers: [Person] = [james, andrea, carol]

clubMembers.append(pongo)

func areYouAMemberOfTheClub(person: Person) -> Bool {
     return clubMembers.contains(person)
    

  
    
    
}

