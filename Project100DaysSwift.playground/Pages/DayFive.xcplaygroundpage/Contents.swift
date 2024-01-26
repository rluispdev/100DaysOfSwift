//Day5 - WritingFunctions, Accepting paramenters, Returning values, Paramenter Labels, Omitting paramenter labels, Default paramenters, Variadic functions, Writing thowing functions, Running thowing functions, inout parameters

//MARK: Writing Functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
///Call function
printHelp()

//MARK: - Accepting parameters

func square(number: Int) {
    print(number * number)
}

square(number: 8)

//MARK: - Returning values
///->  return
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 83)
print(result)

 
//MARK: - Parameter labels


 
