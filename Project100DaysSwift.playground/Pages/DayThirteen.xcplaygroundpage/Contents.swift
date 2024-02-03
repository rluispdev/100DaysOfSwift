//Consolidation 1

//DayThirteen - Variables and constants, Types of Data, Operators, String interpolation, arrays, Dicitionares, Conditional statements., Loops, Switch case


//MARK: Variables and constants

var name = "Tim McGraw"
name = "Romeo"

let name2 = "Tim McGraw"
 


//MARK: Types of Data, String, Int, Double, Float...

var name3: String
name3 = "Tim McGraw"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333

//MARK: Operators
///Math basic
var a = 10
a = a + 1
a = a - 1
a = a * a
///Add then assign to
var b = 10
b += 10
b -= 10

///Some of these operators apply to other data types
var a2 = 1.1
var b2 = 2.2
var c = a2 + b2

var name1 = "Tim McGraw"
var name4 = "Romeo"
var both = name1 + " and " + name4

///Operators  comparations
c > 3
c >= 3
c > 4
c < 4

var name5 = "Tim McGraw"
name5 == "Tim McGraw"


var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate


var name6 = "Tim McGraw"
name6 == "Tim McGraw"
name6 != "Tim McGraw"


//MARK: String Interpolation
 
var name9 = "Tim McGraw"
var age2 = 25
var latitude1 = 36.166667

"Your name is \(name9), your age is \(age2), and your latitude is \(latitude1)"

//MARK: Array
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs)

var songs2 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs3 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both1 = songs2 + songs3

//MARK: Dictionaries

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

//MARK: Conditional statements

var action: String
var person2 = "hater"

if person2 == "hater" {
    action = "hate"
}

 
var stayOutTooLate2 = true
var nothingInBrain = true
/// ! (not) operator
if !stayOutTooLate2 && nothingInBrain {
    action = "cruise"
}


//MARK: Loop

//For in
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)

//MARK: Switch case

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

///Exemple2
let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}
