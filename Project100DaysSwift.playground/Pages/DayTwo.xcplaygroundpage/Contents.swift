//DayTwo

//Arrays, Sets, Tuples, Arrays vs Sets vs Tuples, Dictionaries, Dictionaries Default Values, Empaty Collections, Enumerations, Enum Associated Values, Enum Raw Values


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

//MARK: - Array x Set x Tupla

//To fixed collection of related values where each item has a precise position or name, you should use a tuple:
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//To a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["aardvark", "astronaut", "azalea"])

//To a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//MARK: - Dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
    "Madonna": 1.73
]

//In Dictionary can have duplicate
//Maintains order
//Less performance - O(n)
//Store elements of different types
//Dictionary<Key, Value>

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla",
]

favoriteIceCream["Sophie"]
//Dictionary default values
favoriteIceCream[ "Charles", default: "Unknown"]

    //MARK: - Empty Collections

//Dictionary
var teams = [String: String]()
//Array
var results = [Int]()
// Set
var words = Set<String>()
var numbers = Set<Int>()

/// Other formas for Dictionary and Array
 var scores = Dictionary<String, Int>()
 var results1 = Array<Int>()


//MARK: - Enumerations

enum DayOfWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

//No duplicates.
//Unordered.
//Best performance - O(1)
//Store elements of different types
//Immutable

//MARK: Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")


//MARK: Enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

//You can assign one or more cases a specific value, and Swift will generate the rest. It’s not very natural for us to think of Earth as the second planet

enum Planets: Int {
    case mercury = 1
    case venus //2
    case earth //3
    case mars  //4
}

let world = Planet(rawValue: 2) // Earth
let world1 = Planets(rawValue: 2) //Venus


