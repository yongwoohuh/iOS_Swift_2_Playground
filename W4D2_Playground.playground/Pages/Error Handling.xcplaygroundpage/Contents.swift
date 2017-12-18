//: [Previous](@previous)

//: ### Do Try Catch
//: We are going to learn about error handling which is how to handle a potential error gracefully.
//: It is a much better user experience to have our application manage display proper errors or do an alternative action as oppose to crashing our app.
//: Error handling has a few components to it and we will run through all of them with our example below.

// Here we are defining our own 'Error' enum. 'Error' is a protocol part of the Apple framework
// This is to indiciate a potential reason for an error to occur
enum DivideError: Error {
    case CannotDivideByZero
}

// This is a function that divides numbers num1 and num2.
// Notice the 'throw' keyword in the function. It means this function is capable of 'raising' or 'throwing' an error
func divideNumbers( num1: Double, num2: Double ) throws -> Double{
    
    // We can to catch the error if we are dividing by zero, because this is bad!
    if num2 == 0 {
        
        // If the num2 parameter is in fact zero, let's indicate an error as occured by 'throwing' it out
        throw DivideError.CannotDivideByZero
    }
    
    // Otherwise, we can just do the basic division here
    return num1 / num2
}

// Now let's try our function and cause an error to be thrown
// We start by wrapping the function inside a do/catch block
do{
    
    // We call our 'divideNumbers' function with the keyword 'try' in front
    let dividedAnswer = try divideNumbers(num1: 10, num2: 0)
    
    // The 'divideNumbers' will throw an error because we are trying to divide by zero
}
// And here is where we 'catch' the error
catch let error {

    // Once 'caught', we can print out the error for more information and prevents our app from crashing
    print("An error is thrown: \(error)")
}


//: ### Challenge 7
//: Going back to our challenge from "More Optionals", let's rewrite the form valiation but we will use throw errors to indicate which piece is missing.
//: We want to write a function that validates form data filled in by a user. Once we encounter the first field that is blank, we want to throw an error indicating which field is empty
//: If the user has filled in everything correctly, we want to print out all information out.
//: Below is some test data you can use to test your function.

// Should pass all checks and print all information
let username: String? = "user1"
let password: String? = "password123"
let email: String? = "user1@lighthouselabs.ca"

// Should stop at password check and throw an error regarding empty password
//let username: String? = "user1"
//let password: String? = nil
//let email: String? = "user1@lighthouselabs.ca"

// Should stop at username check and throw an error regarding empty user name
//let username: String? = nil
//let password: String? = nil
//let email: String? = "user1@lighthouselabs.ca"



//: [Next](@next)
