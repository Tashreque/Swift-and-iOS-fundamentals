import UIKit


// MARK: - Optionals
// This is an optional Integer, meaning that the variable 'number' can either hold an Integer or be nil. The number has been initialized here.
var number: Int? = 5
var result = 0

// Safely unwrapping an optional to avoid an exception.
if let number = number {
    result = number + 5
    print(result)
} else {
    print(result)
}

// MARK: - Implicitly unwrapped optionals
// Implicitly unwrapped optionals should only be used if we are 100% sure that the optional variable will be initialized before being any reference to that variable is done. An implicitly unwrapped optional can also be safely unwrapped again.
var name: String!

// Initialize
name = "John"

// This will lead to a crash if 'name' is not initialized.
let secondResult = name + " abcd"
