 //DayNine - Initializers, Referring to the current instance, Lazy properties, Static propperties and methods, Acess Control 

//MARK: Initializers

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

//MARK: - Referring to the current instance


///Each of these structures uses a different approach to name properties and initializer parameters.

//Using self.
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//Approach 2
struct Person2 {
    var bear: String

    init(name: String) {
        print("\(name) was born!")
        bear = name
    }
}

//Approach 3
struct Person3 {
var name: String

init(bear: String) {
    print("\(bear) was born!")
   name = bear
}
}

let test = Person(name: "Kevin")
let test2 = Person2(name: "Pooh")
let test3 = Person3(bear: "Lulu")

 //MARK: - Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct People {
    var name: String

/*
 The use of lazy properties can be helpful when you have properties that may not be used immediately, and their initialization is a resource-intensive process. This helps improve performance by deferring initialization until it is actually needed.
 */
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = People(name: "Ed")
ed.familyTree

