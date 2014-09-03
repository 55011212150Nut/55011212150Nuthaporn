let tutorialTeam = 56
let editorailTeam = 23
var totalTeam = tutorialTeam + editorailTeam

totalTeam += 1

let tutorialTeamInferred = 56
let tutorialTeamExplicit: Int = 56

let priceInferred = 19.99
let priceEcplicit:Double = 19.99

let onSaleInferred = true
let onSaleEcplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopli Cushion"

if (onSaleInferred){
    println("\(nameInferred) on sale for \(priceInferred)!")
}else {
    print("\(nameInferred) at regular prince: \(priceInferred)!")
}