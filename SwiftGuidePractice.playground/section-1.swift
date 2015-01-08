// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
println("Hello World");

let constant : Float = 10

let ​label​ = "The width is "
let width = 90
let widthLabel = ​label​ + String(width)
let appleSummary = "I have \(width) apples."

let first = "Antonio"
let last = "Ding"
let fullName = "My name is \(first) \(last), Nice to meet you."

var shoppinglist = ["meat", "milk", "coffee"];
shoppinglist[1] = "salt"
println(shoppinglist)

let scores = [90, 100, 84, 85, 90, 99];
var teamScore = 0
for score in scores {
    if score >= 90 {
        teamScore += 3;
    } else {
        teamScore += 1;
    }
}

teamScore

var optionalName : String = "Antonio"
var greeting = "Hello!"
if optionalName.isEmpty {
    greeting = "Hello \(optionalName)"
} else {
    greeting = "Hello Anonymous"
}

let numbers = [
    "primes" : [2, 3, 5, 7, 11, 13, 17],
    "Fibonnacci" : [1, 1, 2, 3, 5, 8],
    "Square" : [1, 4, 9, 16],
]

var largest = 0
var type = "Numbers"
for (kind, numb) in numbers {
    for n in numb{
        if n > largest{
            largest = n;
            type = kind.capitalizedString;
        }
    }
}

println(type + " " + String(largest))

var m = 2;
while m < 100{
    m = m * 2
}

m

var n = 2;
do{
    n = n * 2;
}while n < 100;

n

var sum1 = 0;
for i in 0...100 {
    sum1 += i;
}
sum1

var sum2 = 0;
for i in 0..<101 {
    sum2 += i
}
sum2

func greeting(name : String, special : String) -> String {
    return "Hello \(name), today's special is \(special)";
}

greeting("Yi", "Holiday")

func avgOf(numbers : Int...) -> Float {
    if numbers.count == 0 {return 0;}
    var avg : Float = 0;
    for num in numbers {
        avg += Float(num);
    }
    return avg / Float(numbers.count);
}

avgOf(42, 597, 12)
avgOf()

let numberss = [1,4,5,6,7,8,9];

numberss.reverse()

let mappednumbers = numberss.map({
    (n : Int) -> Int in
    if n % 2 == 0 {return n}
    else {return 0}
})

let sortedNumbers = sorted(numberss) {$0 > $1}
sortedNumbers

class NamedShape {
    var numberOfSides: Int = 0;
    var name: String;
    
    init(name: String){
        self.name = name;
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides";
    }
}

//var shape = Shape()
//shape.numberOfSides = 4
//shape.simpleDescription()
//shape.totalSides(3)

class Circle: NamedShape {
    var radius: Double
    
    var perimeter: Double{
        get{
            return 2 * M_PI * radius
        }
        
        set{
            radius = newValue / 2 / M_PI
        }
    }
    
    init(name: String, r: Double){
        self.radius = r;
        super.init(name: name)
    }
    
    func area() -> Double{
        return self.radius * self.radius * M_PI;
    }
    
    override func simpleDescription() -> String {
        return "A circle named \(name) with radius \(radius)."
    }
}

var circle = Circle(name: "Big", r: 5);
circle.simpleDescription()


class Counter {
    var count: Int = 0;
    func incrementBy(amount: Int, numberOfTimes: Int){
        count += amount * numberOfTimes
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)
counter.incrementBy(2, numberOfTimes: 7)

enum Rank: Int{
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String{
        switch self{
        case .Ace:
            return "Ace"
        case .Jack:
            return "Jack"
        case .Queen:
            return "Queen"
        case .King:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
    
    func compare(a: Rank, b: Rank) -> Int{
        if a.rawValue < b.rawValue {return -1}
        else if a.rawValue == b.rawValue {return 0}
        else {return 1}
    }
}











