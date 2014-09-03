class ZooAnimal{
    let animalName: String
    let Food: String
    var data: [String: String] = ["Dog": "meat", "elephant": "cane", "cat": "fish", "bat": "fruit", "birds": "worm", "frog": "fly"]
    var List:[String] = ["Dog","elephant","cat","bat","birds","frog"]
    
    init(animalName:String, Food:String){
        self.animalName = animalName
        self.Food = Food
    }
    
    func foodAnimal() -> String{
        var food2 = data[animalName]
        
        return food2!
    }
    
    func changAndAddFood(){
        data[animalName] = Food
    }
    
    func ShowZooAndFood(){
        for animalList in data.keys{
            println(" Animal Name : \(animalList) Food : \(data[animalList])")
        }
    }
    
    func addAnimal(animal:String){
        List.append(animal)

    }
    
    func removeAnimalList(animal:String) -> String{
        let deleteName = List.removeLast()
        return deleteName
    }
    
}

let Zoo = ZooAnimal(animalName: "ant", Food: "etc.")
//Zoo.foodAnimal()
//Zoo.changAddFood()
//Zoo.foodAnimal()
Zoo.changAndAddFood()
Zoo.foodAnimal()
Zoo.ShowZooAndFood()
Zoo.addAnimal("pic")
Zoo.removeAnimalList("pic")



