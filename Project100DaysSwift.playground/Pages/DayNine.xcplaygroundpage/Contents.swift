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

 
