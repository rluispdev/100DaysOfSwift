 //DaySix - Creating basic closures, Accepting parameters in a closure, Returning values from a closure, Closures as parameters, Trailing closure syntax


//MARK: Creating basic closures

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    // Chamada da closure passada como argumento
    action()
    print("I arrived!")
}

//MARK: - Accepting parameters in a closure

// Declaração de uma closure atribuída à variável 'driving'
let driving = { (place: String) in
    // Corpo da closure, que aceita um parâmetro 'place' e imprime uma mensagem
    print("I'm going to \(place) in my car")
}
//Chamada da closure com o argumento "London"
driving("London")




//MARK: -
//MARK: -
//MARK: -
//MARK: -
