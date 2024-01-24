 //Day03 - Arthmetic Operators, Operator overloading, Compund assingnmemt operators, Comparison operators, Conditions, The ternary operator, Switch statements, Range Operators

//MARK: Arithmetic Operators (Double, Float, Int...)

let value: Double = 90000000000000001
print(value)

//It isn’t safe to add a Double to an Int because we lose any numbers after the decimal point, and it isn’t safe to add an Int to a Double because we lose some accuracy.

//MARK: - Operator overloading
///+Numbers
let meaningOfLife = 42
let doubleMeaning = 42 + 42

///+Strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

///+Arrays
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//MARK: - Compound assignment operators

var score = 95
score -= 5
print(score)

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
print(quote)

//MARK: - Comparison operators

let firstScore = 6
let secondScore = 4

firstScore == secondScore //equals
firstScore != secondScore //no equals

///Greater than, less than, or equal to another.
firstScore < secondScore
firstScore >= secondScore

// Work with strings: "Taylor" <= "Swift"

//MARK: - Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
    ///chain conditions
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//MARK: - Combining conditions - && (and), || (or).

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//MARK: - The ternary operator

print(firstCard == secondCard ? "Cards are the same" : "Cards are different.")

//MARK: - Switch statements

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough ///execution to continue on to the next case.
default: /// is required because Swift makes sure you cover all possible cases so that no eventuality is missed off.
    print("Enjoy your day!")
}

//MARK: - Range operators
///For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


 
