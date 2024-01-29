//DayEight - Creating your own structs, Computed properties, Property observers, Methods, Mutating methods, Properties and methods of strings, Properties and methods of arrays


//MARK: Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"


//MARK:  - Computed properties

struct Sport1 {
    var name: String
    var isOlympicSport: Bool
///Computed properties
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
///Example2
let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

struct Code {
    var language: String
    var containsErrors = false
    ///Computed properties
    var report: String {
        if containsErrors {
            return "This \(language) code has bugs!"
        } else {
            return "This looks good to me."
        }
    }
}

var myCode = Code(language: "Swift", containsErrors: true)
print(myCode.report)

///Example3
struct Investor {
    var age: Int
    ///Computed properties
    var investmentPlan: String {
        if age < 30 {
            return "Shares"
        } else if age < 60 {
            return "Equities"
        } else {
            return "Bonds"
        }
    }
}
let investor = Investor(age: 38)
print(investor.investmentPlan)

//MARK: - Property observers

struct Progress {
    var task: String
    var amount: Int {
        /// Property observers
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//MARK: - Methods

struct City {
    var population: Int
///Methods
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

///Example2
struct User {
    var name: String
    var street: String
    var city: String
    var postalCode: String
    func printAddress() {
       print( """
        \(name)
        \(street)
        \(city)
        \(postalCode)
        """)
    }
}

var myAddress = User(name: "Rafael", street: "Rua ABC", city: "Pedra Bonita", postalCode: "3536400")
myAddress.printAddress()

//MARK: - Mutating methods

struct Person {
    var name: String
///To change a property inside a method, you need to mark it using the mutating keyword.
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//MARK: - Properties and methods of strings

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())



