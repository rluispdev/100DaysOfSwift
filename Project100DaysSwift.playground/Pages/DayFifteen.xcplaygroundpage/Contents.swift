//DayFifteen - Properties, Static properties and methods, acess control, Polymorphism and typecasting, Closures

//MARK: Properties

struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

///Property observers
struct Person1 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor1 = Person1(clothes: "T-shirts")
taylor1.clothes = "short skirts"


///Computed properties

struct Person2 {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person2(age: 25)
print(fan.ageInDogYears)


//MARK: - Static properties and methods
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan1 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


//MARK: - Access control

class TaylorFan1 {
    private var name: String?
}

/*
 Public: this means everyone can read and write the property.
 Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
 File Private: this means that only Swift code in the same file as the type can read and write the property.
 Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.
 */

//MARK: - Polymorphism and typecasting

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}
var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

///Converting types with typecasting
for album in allAlbums {
    print(album.getPerformance())

    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

var taylorSwift1 = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless1 = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var allAlbums1: [Album] = [taylorSwift, fearless]

for album in allAlbums1 {
    let studioAlbum1 = album as! StudioAlbum
    print(studioAlbum1.studio)
}


///Converting common types with initializers
//let number = 5
//let text = number as! String
let number = 5
let text = String(number)
print(text)

