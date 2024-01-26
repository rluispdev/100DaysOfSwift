//Day5 - WritingFunctions, Accepting paramenters, Returning values, Paramenter Labels, Omitting paramenter labels, Default paramenters, Variadic functions, Writing thowing functions, Running thowing functions, inout parameters

//MARK: Writing Functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
///Call function
printHelp()

//MARK: - Accepting parameters

func square(number: Int) {
    print(number * number)
}

square(number: 8)

//MARK: - Returning values
///->  return
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 83)
print(result)

 
//MARK: - Parameter labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")
 
//MARK: - Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//MARK: - Default parameters

func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Kevin")
greet2("Kevin", nicely: false)

// MARK: - Variadic functions
func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1, 2, 3, 4, 5)

//MARK: -  Writing throwing functions

enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}

playGame(name: "button")

 //MARK: - Running throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//MARK: - inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

 
