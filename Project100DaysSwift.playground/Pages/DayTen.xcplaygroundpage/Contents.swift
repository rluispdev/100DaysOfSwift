//Day10 - Creating your own classes, Creating your own classes, Overriding methods, Final classes, Copying objects, Deinitializers, Mutability

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


