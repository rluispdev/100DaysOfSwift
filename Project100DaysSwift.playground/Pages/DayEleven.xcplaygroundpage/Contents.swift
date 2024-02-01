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


