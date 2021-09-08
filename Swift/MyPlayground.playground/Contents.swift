import UIKit

//Variable
var greeting = "Hello, playground"

print(greeting)

var a:Int = 1
var b = 2
print(a+b)

a = 2

var c = 10
c = 5

greeting = String(29)

var d:Double = 3.14
print(round(d))
print(Int(round(d)))


//If Statement
print()
if (a < 4 || b > 1) && c > 3 {
    print("only when a is less than 4")
}
else if a >= 1 {
    print("only when a is greater than or equal to 1")
}


//Switch statement
print()
var someChar:Character = "a"
switch someChar {
case "a":
    print("It is an A")
    break
    
case "b":
    print("It is a B")
    break
    
default:
    print("It is not an A or a B")
    break
}


//Loop
print()
var str = "Hello, World"
for index in 1...5 {
    print(index, "hello")
}

var counter = 5
while counter < 8 {
    print("While")
    counter += 1
}

repeat{
    print("Repeat")
    counter -= 1
} while counter >= 5

//Function
print()
func addTwoNumbers() {
    let a = 1
    let b = 2
    let c = a + b
    
    print(c)
}

addTwoNumbers()

func subtractTwoNumber(arg para:Int, arg2 para2:Int) -> Int {
    let a = para
    let b = para2
    let c = a - b
    
    return c
}

let sum = subtractTwoNumber(arg:4, arg2:3)
print(sum)

func addTwoNumber(para:Int, para2:Int) -> Int {
    return para + para2
}
let sum2 = addTwoNumber(para:4, para2:3);

func multipleTwoNumber(_ para:Int, _ para2:Int) -> Int {
    return para * para2
}
let sum3 = multipleTwoNumber(3, 4)


//Class
print()
class BlogPost{
    var blogTitle = ""
    var body = ""
    var numberComment = 0
    
    func addComment(){
        numberComment += 1
    }
}
let blog = BlogPost()
blog.blogTitle = "Hello, World"
blog.addComment()
print(blog.blogTitle)
print(blog.numberComment)

//Inheritance
print()
class Car{
    var topSpeed = 200
    
    func drive(){
        print("Driving at \(topSpeed)")
    }
}

let myRide = Car()
myRide.topSpeed
myRide.drive()

class FutureCar : Car{
    
    override func drive(){
        super.drive()
        print("Faster driving at \(topSpeed + 50)")
    }

    func fly(){
        print("Flying")
    }
}
let newRide = FutureCar()
newRide.topSpeed
newRide.drive()
newRide.fly()

//Initializers
print()
class Person{
    var name = " "
    var age = 0
    
    init(){
        
    }
    
    init(_ name:String, _ a:Int){
        //Set up objects
        self.name = name
        age = a
    }
}

var p = Person("William", 23)
p.name
p.age
var q = Person()
q.name
q.age

//Optionals
print()
class Blog{
    var title:String? //It can be empty or contain the actual object, we have to unwrap that box to check if there is a value or not
    var body = "hey"
}
let post = Blog()
print(post.body + " hello")

//Optional Binding
//If title contains an object, then assign that object to actualTitle
post.title = "yo"

if let actualTitle = post.title{
    print(actualTitle)
}

//I know there is a value in title, I don't need to check it and I just want to unwrap right away using !
print(post.title! + "salute")

if post.title != nil{
    print("Yes")
}
