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
