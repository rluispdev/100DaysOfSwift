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
