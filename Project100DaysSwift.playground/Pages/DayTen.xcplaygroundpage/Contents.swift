//Day10 - Creating your own classes, Class inheritance, Overriding methods, Final classes, Copying objects, Deinitializers, Mutability

//MARK: Creating your own classes

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

//MARK: -Class inheritance

class Horse {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Horse {
    init(name: String) {
        super.init(name: name, breed: "Zoor")
    }
}

//MARK: - Overriding methods

class Band {
    func singSong() {
        print("Here's a new song.")
    }
}
class MetalBand: Band {
    ///Swift requires us to use override func rather than just func when overriding a method
    override func singSong() {
        print("Ruuuuh ruh ruh ruuuuuh!")
    }
}
let lordi = MetalBand()
lordi.singSong()

//MARK: - Final classes

final class Cat {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//MARK: - Copying objects

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


class Author {
    var name = "Anonymous"
}
var dickens = Author()
dickens.name = "Charles Dickens"
var austen = dickens
austen.name = "Jane Austen"
print(dickens.name)
print(austen.name)


class Hater {
    var isHating = true
}
var hater1 = Hater()
var hater2 = hater1
hater1.isHating = false
print(hater1.isHating)
print(hater2.isHating)

class Magazine {
    var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)
print(vogue.pageCount)


class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)


//MARK: - Deinitializers

class Person {
    var name1 = "John Doe"

    init() {
        print("\(name1) is alive!")
    }
    
    deinit {
        print("\(name1) is no more!")
    }

    func printGreeting() {
        print("Hello, I'm \(name1)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//MARK: - Mutability

///The mutating keyword in Swift is used to indicate that a method can modify the properties of a structure (struct) or enumeration (enum).

struct Park {
    var numberOfFlowers = 1000
    mutating func plantFlowers() {
        numberOfFlowers += 50
    }
}
var park = Park()
park.plantFlowers()
