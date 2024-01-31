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
