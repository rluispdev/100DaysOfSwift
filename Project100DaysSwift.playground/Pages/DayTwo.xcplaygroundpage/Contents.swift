//DayTwo

//Arrays, Sets, Tuples, Arrays vs Sets vs Tuples, Dictionaries, Dictionaries Default Values, Empaty Collections, Enumerations, Enum Associated Values, Enum Raw Values, Ccmplex Types


//Arrays

let consoles = ["Playstation", "Xbox", "Nintendo", "Playstation"]
consoles[2]

var years = [2000, 2000, 2005, 2010]
years[0]


//In Array can have duplicate.
//Maintains order
//Less performance - O(n)

//MARK: - Sets

/*
 In comparison, arrays must store their items in the order you give them, so to check whether item X exists in an array containing 10,000 items Swift needs to start at the first item and check every single item until it’s found – or perhaps it isn’t found at all.
 */

let consoles1 = Set(["Playstation", "Xbox", "Nintendo", "Playstation"])

//No duplicates
//Unordered
//Best performance - O(1)
 
///Array
print(consoles)
///Set
print(consoles1)

//MARK: - Tuplas

var website = (name: "Apple", url: "www.apple.com")
var person = (name: "Paul", age: 40, isMarried: true)

//No duplicates
//Unordered
//Best performance - O(1)
//Store elements of different types


