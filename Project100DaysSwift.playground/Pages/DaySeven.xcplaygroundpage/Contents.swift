 //DaySeven - Using closures as parameters when they accept parameters, Using closures as parameters when they return values, Shorthand parameter names

//MARK: Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


func login(then action: (String) -> Void) {
    print("Authenticating...")
    let username = "twostraws"
    action(username)
}
login { username in
    print("Welcome, \(username)!")
}

/*
 A função login é chamada.
 Ela executa a parte de autenticação (o print de "Authenticating...").
 Define o username como "twostraws".
 Chama a closure action passando o username.
 Dentro da closure, é impressa a mensagem de boas-vindas usando o username que foi passado.
 */


func makeSale(signContract: (String) -> Void) {
    let clientName = "Apple"
    print("\(clientName) should buy our product.")
    print("You're interested? Great! Sign here.")
    signContract(clientName)
}
makeSale { (client: String) in
    print("We agree to pay you $100 million.")
    print("Signed, \(client)")
}

/*
 Use the function `makeSale` when:
 You have specific actions (such as printing messages or performing operations) that need to be executed but do not necessarily generate a return value.
 You need to perform tasks, such as modifying variables outside the scope of the closure.

 */
 
//MARK: - Using closures as parameters when they return values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

/*
 Use the function `travel` when:
 You have a specific action, such as generating a description, that can vary based on a parameter (for example, the location of the trip).
 The logic within the closure provides a specific return value that you want to use later.

 */


//MARK: -
