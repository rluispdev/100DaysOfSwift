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


//MARK: -
