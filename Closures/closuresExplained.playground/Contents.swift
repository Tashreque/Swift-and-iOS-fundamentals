import UIKit

// MARK:- Closure definitions

// A simple swift function
func simpleFunction(number: Int) -> Int {
    return number * number
}
// A simple closure with no parameters
var aBlock = {
    print("Hi from closure!")
}
// A closure with one parameter
var secondBlock = { (name: String) in
    print("The name is \(name)")
}
// A closure with one parameter and a return type
var thirdBlock = { (name: String) -> String in
    return "The name is \(name)"
}

// MARK:- Passing around closures in functions

// A function that accepts a closure block as an argument
func doSomeWork(completion: () -> ()) {
    print("Something...")
    completion()
}

// This is a simple closure that is passed on to the function doSomeWork(_:)
let closureParameter = {
    print("Closure stuff!")
}
doSomeWork(completion: closureParameter)

// A function which computes a value (after 5 seconds in the main queue) and passes the computed result via the closure parameter. In this case, Hey! and Hey Again! will get printed out right away but "The updated value from server is 10" will get printed out 5 seconds later. This has been further explained in the youtube video. The use of "@escaping" was addressed at a fundamental level too.
func receiveDataFromServer(value: Int, completion: @escaping (_ num: Int) -> ()) {
    print("Hey!")
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        completion(value + 5)
    }
    print("Hey again!")
    completion(value + 5)
}

receiveDataFromServer(value: 5) { (computedValue) in
    print("The updated value from server is \(computedValue)")
}



















