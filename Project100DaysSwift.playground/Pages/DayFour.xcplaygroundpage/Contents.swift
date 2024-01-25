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


