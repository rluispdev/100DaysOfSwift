 //DaySix - Creating basic closures, Accepting parameters in a closure, Returning values from a closure, Closures as parameters, Trailing closure syntax


//MARK: Creating basic closures

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    // Calling the closure passed as an argument
    action()
    print("I arrived!")
}

//MARK: - Accepting parameters in a closure

// Declaração de uma closure atribuída à variável 'driving'
let driving = { (place: String) in
    //Body of the closure, which takes a parameter 'place' and prints a message
    print("I'm going to \(place) in my car")
}
//Calling the closure with the argument "London"
driving("London")

//MARK: -  Returning values from a closure

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

/// To  closure returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function:

//MARK: - Closures as parameters

let driving2 = {
    print("I'm driving in my car")
}
///If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type as () -> Void.
func travel2(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel2(action: driving2)


//MARK: - Trailing closure syntax

func travel3(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

///Because there aren’t any other parameters, we can eliminate the parentheses entirely.
travel3 {
    print("I'm driving in my car")
}
 
