import Foundation




// "There is always a value and it is a Boolean"
let myBool: Bool = false

// "We don't know if there is a value, but if there is, it is a Boolean"
var myOtherBool: Bool? = nil

//print(myOtherBool ?? <#default value#>)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

// nil coalescing operator

let newValue: Bool? = myOtherBool

//"The Value of myOtherBool (If there is one), otherwise false"
let newValue2: Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")

var myString: String? = "Hello, World!"

print(myString ?? "There is no value")

myString = nil

print(myString ?? "There is no Value")

//let newString = myString ?? "Some default Value"

// -----------------------------------------------------

var userIsPremium: Bool? = nil

@MainActor func checkIfUserIsPremium() -> Bool? {
    return userIsPremium ?? false
}

@MainActor func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let IsPremium = checkIfUserIsPremium()

/// If-let
/// When if-let is sucessful, enter the closure

@MainActor func checkIfUserIsPremium3() -> Bool {
    
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}

@MainActor func checkIfUserIsPremium4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
        return false
}

@MainActor func checkIfUserIsPremium5() -> Bool {
    
    if let userIsPremium {
        return userIsPremium
    }
        return false
}


// Guard
// When a guard is a failure, enter the closer

@MainActor func checkIfUserisPremium6() -> Bool {
    
    // Make sure there is a value
    // If there is, let newValue equal that value
    // Else (Othersise) return out of the function
    guard let newvalue = userIsPremium else {
        return false
    }
    
    // Here we have acess to the non-optional value
    return newvalue
}

@MainActor func checkIfUserIsPremium7() -> Bool {
    guard let  userIsPremium else {
        return false
    }
    return userIsPremium
}


//--------------------------------------------------


var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil


@MainActor func checkIfUserIsSetUp() -> Bool? {
    
    if let userIsNew, let  userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnBoarding == BOOL AND
        // userFavoriteMovie == string
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    } else {
        // userIsNew == nil OR
        // userDidcompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}


@MainActor func checkIfUserIsSetUp2() -> Bool {
    
    guard let userIsNew, let  userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // userDidcompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
    
    // userIsNew == Bool AND
    // userDidCompleteOnBoarding == BOOL AND
    // userFavoriteMovie == string
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
    
}


func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}

// layered if-let
@MainActor func checkIfUserIsSetUp3() -> Bool? {
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnBoarding == BOOL
            
            if let userFavoriteMovie {
                // userFavoriteMovie == string
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
                
            } else {
                // userFavoriteMovie == nil
                return false
            }
        } else {
            // userDidcompleteOnboarding == nil
            return false
            
        }
    } else {
        // userIsNew == nil
        return false
    }
}
    

// Layered gaurd
@MainActor func checkIfUserIsSetUp4() -> Bool? {
    
    
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidcompleteOnboarding == nil
    
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
    
    
}

@MainActor func checkIfUserIsSetUp5() -> Bool? {
    
    guard let userIsNew else {
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        return false
        
    }
    guard let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

// Optional Chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    let username: String? = getUsername()
    
    // "I will get the count if the username is not nil"
    let count = username?.count
    
    let title: String = getTitle()
    
    // "I will get the count always"
    let count2 = title.count
    
    // if username has a value, and first character in username has a value, then return the value of isLowercase
    // Optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    // "I will get the count because I know %100 that username is not nil"
    // This will crash our application if username is nil!
    let count3: Int = username!.count
}

// safely unwrap an optional
// nil coalscing
// if-let
// guard

// explicitly unwrap optional
// !
