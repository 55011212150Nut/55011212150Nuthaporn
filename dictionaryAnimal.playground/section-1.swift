class ZooAnimal{
    let animalName: String
    let Food: String
    var data: [String: String] = ["Dog": "meat", "elephant": "cane", "cat": "fish", "bat": "fruit", "birds": "worm", "frog": "fly"]
    
    init(animalName:String, Food:String){
        self.animalName = animalName
        self.Food = Food
    }
    
    func foodAnimal() -> String{
        var food2 = data[animalName]
        
        return food2!
    }
    
    func changAddFood(){
        data[animalName] = Food
    }
    
    
    //var animalName: [Int: String] = [1: "Dog",2: "Cat",3: "Lion",4: "bat"]
   // var eat: [Int: String] = [1: "meat",2: "fish",3: /"meat",4 :"fruit"]
    //let menu: [String] = ["add","remove"]
    
}

let Zoo = ZooAnimal(animalName: "cat", Food: "cake")
Zoo.foodAnimal()
Zoo.changAddFood()
