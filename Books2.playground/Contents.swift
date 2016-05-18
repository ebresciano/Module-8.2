//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

 class Book {
    
    let title: String
    let author: String
    let genre: String
    
    init(title: String, author: String, genre: String){
    
    self.title = title
    self.author = author
    self.genre = genre
}
}

class bookShelf {
    
    var booksArray = ["Peter Pan", "Alice in Wonderland", "Metamorphisis"]


func addBook(book: Book) {
    booksArray.append("The Hobbit")

    
}

func removeBook(book: Book) {
    booksArray.removeAtIndex(0)
}
    
    
}

