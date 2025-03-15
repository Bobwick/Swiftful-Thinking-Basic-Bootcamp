import Foundation

func myFirstFunction() {
    print("MY FIRST FUNCTION CALLED")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("MY SECOND FUNCTION CALLED")
}

func myThirdFunction() {
    print("MY THIRD FUNCTION CALLED")
}
myFirstFunction()


func getUserName() -> String {
    let username = "Nick"
    return username
}

func checIfUserIsPrium() -> Bool {
    return false
}

let name: String = getUserName()


//-------------------------------------

showFristScreen()

func showFristScreen() {
    var userDidCompleteOnBoarding: Bool = false
    var userProfileIsCrreated: Bool = true
    let status = checkUserStatus(didDidCompleteOnBoarding: userDidCompleteOnBoarding, userProfileIsCrreated: userProfileIsCrreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

func checkUserStatus(didDidCompleteOnBoarding: Bool, userProfileIsCrreated: Bool) -> Bool {
    if didDidCompleteOnBoarding && userProfileIsCrreated {
        return true
    } else {
        return false
    }
}

func doSomethingElse(someValue: Bool) {
    
}

//------------------------------

let newValue = doSomething()

func doSomething() -> String {
    var title: String = "Avengers"
    
    // "If title is equal to Avengers"
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}

checkIfTitleIsAvengers()


func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    
    //"Make sure title == "Avengers"
    guard title == "Avengers" else {
        return false
    }
    
    return true
}

func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers"
    
    if title == "Avenger"{
        return true
    } else {
        return false
    }
}



// Calculated varaiables are basically functions
// Generally good for when you need to pass data into the function

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int {
    return number1 + number2
}
