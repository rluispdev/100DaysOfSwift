 //DayEleven- Protocols, Protocol Inheritance, Exetencions, Protocol extencions, Protocol-oriented programing


//MARK: Protocols

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
    

}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


//Exemple2

protocol ChannelsTV {
    var channel : String { get set }
}

struct MyChannels : ChannelsTV {
    var channel: String
}

let abc = MyChannels(channel: "ABC Networks.")
print(abc.channel)

/// No is possible creat a protocol only with  set.

//MARK: - Protocol Inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study() -> String
}

protocol HasVacation {
    func takeVacation(days: Int) -> Int
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


struct HumanResources: Employee{
    func calculateWages() -> Int {
        var days = 530
        return days
    }
    
    func study() -> String {
        return  "500"
    }
    
    func takeVacation(days: Int) -> Int {
        return days
    }
    
}

let Ben =  HumanResources()
print("Ben study \(Ben.study()) days for year, worked \(Ben.calculateWages()), and your vaction is \(Ben.takeVacation(days: 24)) days")

//MARK: - Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 45
number.squared()

print(number.squared())


 //MARK:  Protocol extensions
