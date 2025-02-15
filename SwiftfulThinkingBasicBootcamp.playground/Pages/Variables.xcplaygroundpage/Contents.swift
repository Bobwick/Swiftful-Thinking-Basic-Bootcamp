import Foundation

// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true

//  Cannot assign to value: 'someConstant is a 'let' constant 
//  someConstant = false

someVariable = false



var myNumber = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 23487024
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 458

 // if statments

var userIsPremium: Bool = false

if userIsPremium == true {
    print("1 - user is premium")
} else {
    print("1.1 - user is NOT primium")
}

if userIsPremium {
    print("2 - user is priemium")
}

if userIsPremium == false {
    print( "3 - user is NOT premium")
}

if !userIsPremium {
    print( "4 - user is not premium")
}

