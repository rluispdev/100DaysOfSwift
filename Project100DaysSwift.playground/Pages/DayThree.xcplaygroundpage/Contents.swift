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



