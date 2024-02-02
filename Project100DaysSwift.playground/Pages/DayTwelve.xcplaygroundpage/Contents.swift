//DayTwelve - Handiling missing data, Unwrapping optionals, Unwrapping with guard, Force unwrapping, Implicitly unwrapped optionals, Nil coalescing, Optional chaining, Optional try, Failable initializers, Failable initializers

// MARK: Handiling missing data
///To make a type optional, add a question mark after it.
var age: Int? = nil


// MARK: - Unwrapping optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

let song: String? = "Shake it Off"
if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")
}


let currentDestination: String? = "Pará"
if let destination = currentDestination {
    print("We're walking to \(destination).")
} else {
    print("We're just wandering.")
}

// MARK: - Unwrapping with guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}
///However, the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.


func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 345
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")}
    
    
func playScale(name: String?) {
    guard let name = name else {
        return
    }
    print("Playing the \(name) scale.")
}

playScale(name: "C")
 
func verify(age: Int?) -> Bool {
    guard let age = age, age >= 18 else {
        return false
    }
    return true
}

if verify(age: 28) {
    print("You're old enough.")
} else {
    print("Come back in a few years.")
}


func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello") {
    print(result)
}

func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else { return false }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}
if isLongEnough("Mario Odyssey") {
    print("Let's play that!")
}

// MARK: -  Force unwrapping

let str = "5"///let str = "" -> __lldb_expr_86/DayTwelve.xcplaygroundpage:104: Fatal error: Unexpectedly found nil while unwrapping an Optional value
let num = Int(str)
let num1 = Int(str)!
print(num1)

// MARK: - Implicitly unwrapped optionals

let age2: Int! = nil /// nil is  allow us to represent the absence of a value.


// MARK: - Nil coalescing

let lightsaberColor: String? = "green"
let color = lightsaberColor ?? "blue"

// MARK: - Optional chaining

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

