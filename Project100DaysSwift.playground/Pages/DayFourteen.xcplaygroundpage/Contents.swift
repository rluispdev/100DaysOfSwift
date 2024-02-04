//DayFourteen - Functions, Optionals, Optional chaining, Enumerations, Structs, Classes.

//MARK: - Funcitons

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 20)

///External and internal parameter names
func countLettersInString(string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLettersInString(string: "Hello")

///Specify an underscore, _, as the external parameter name.
func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("HelloWorld")

///Call the function with the parameter name “in”.
func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLetters(in: "Swift")
                
///Return values   and switch/case.

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}
                  

func getMeaningOfLife() -> Int {
    42
}

//MARK: - Optionals

func getHaterStatus() -> String? {
    return "Hate"
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status = getHaterStatus(weather: "rain")
///unwrapped
if let unwrappedStatus = status {
    print(unwrappedStatus)
}else{
    print("No hate today")
}


///Force unwrapping optionals

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!).")
}

///Implicitly unwrapped optionals
var username: String! = "UsuarioLogado"
let welcomeMessage: String = "Bem-vindo, \(username)!"
print(welcomeMessage)

//MARK: -  Optional chaining

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

//let album = albumReleased(year: 2006)
//print("The album is \(album)")

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")

//MARK: -  Enumerations

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))
print(getHaterStatus(weather: .sun))

//MARK: - Struct

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}
    let taylor = Person(clothes: "T-shirts blue", shoes: "sneakers.")
    taylor.describe()

 
