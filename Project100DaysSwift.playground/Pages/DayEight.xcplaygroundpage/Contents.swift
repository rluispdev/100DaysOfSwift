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

