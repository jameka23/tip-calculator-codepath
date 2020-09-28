import UIKit

var str : String = "Hello, playground"
let const = "this is a constant and the value can not change"

var names: [String] = ["chaffin", "Tina"]
// once the type is set you can not change it
print(str)


for name in names {
    print(name)
}

//swift dictionary
//var user: [String : String]
var user : [String:Any] = ["name" : "Timothy", 
             "hometown" : "Dallas",
             "occupation" : "Engineer",
             "age":39]

let name = user["name"] as! String //forces name to be a string, could crash the app
let age : Int = user["age"] as! Int
print(name)

//closure & optionals
// optionals ex:
//var x: Int the variable will always have a variable in it
//var x: Int? it can be null



