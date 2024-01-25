//DayFour -  ForLoops, While Loops, Repeat Loops, Existing Loops, Existing multiple Loops, Skipping items, Infinite Loops

//MARK: For Loops

let soccers  = ["Kyle Walker", "Kalvin Phillips", "Rúben Dias", "Phill Fodden", "Kevin De Bruyne" ]

for soccer in soccers {
    
    print( "\(soccer) play in Machester City.")
}

for _ in soccers {
    print("[CENSORED], soccer in ManCity.")
}

//MARK: -  While Loops
let soccers2  = [ "Cole Palmer", "Nicolas Jackson", "Cristopher Nkunku"]

func soccerCity() {
    var index = 0
    
    while  index < soccers.count {
        let player = soccers[index]
        if !soccers2.contains(player) {
            print("\(player) is not a soccer of Chelsea.")
        }
        index += 1
    }
    
}
soccerCity()

//MARK: - Reapeat Loops

var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

//MARK: - Exiting loops

var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        /// Break keyword
        break
    }

    countDown -= 1
}

//MARK: - Exiting multiple loops

///Tables from 1 through 10
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
///If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            /// Add our condition inside the inner loop, then use break outerLoop to exit both loops at the same time.
            break outerLoop
        }
    }
}

//MARK: - Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        ///Skip the current item and continue on to the next one
        continue
    }

    print(i)
}
//MARK: - Infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}


 
