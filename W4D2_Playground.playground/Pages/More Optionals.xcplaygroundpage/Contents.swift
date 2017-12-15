//: ### More Optionals
//: Let's start off with some review of optionals.
//: When we have an optional variable, the variable might contain a value or it can contain nil. Optionals are represented with a '?' in front of the variable type.

// Here we declare a Double variable that is optional
var myOptionalValue: Double? = nil

// We set our variable with a value of 1.0
myOptionalValue = 1.0

//: Whenever we have an optional value, we should almost always check if the optional has a value or not. We can use "conditional unwrapping" to accomplish this in a safe manner.

// We do a 'conditional unwrapping' or a 'if-let' statement
// This condition checks if the optional value has a value, and if it does, it will continue inside our block of code.
if let myUnwrappedValue = myOptionalValue {
    
    print(myUnwrappedValue)
}

// We can also freely unwrap an optional value using '!', but this will crash your app if the optional value is found to be nil.
// So you have to be very careful with this!
print(myOptionalValue!)


//: ### Challenge 1
//: We want to write a function that validates form data filled in by a user. Once we encounter the first field that is blank, we want to indicate to the user that the field is blank.
//: If the user has filled in everything correctly, we want to print out all information out.
//: Below is some test data you can use to test your function.

// Should pass all checks and print all information
let username: String? = "user1"
let password: String? = "password123"
let email: String? = "user1@lighthouselabs.ca"

// Should stop at password check and indicate password field is empty
//let username: String? = "user1"
//let password: String? = nil
//let email: String? = "user1@lighthouselabs.ca"

// Should stop at username check and indicate username field is empty
//let username: String? = nil
//let password: String? = nil
//let email: String? = "user1@lighthouselabs.ca"




//: ### Guard Let
//: Depending on how you finished the first challenge, the code you've written might not be as readable or optimal as it could be. So let's take a look at how we can improve this.
//: A 'guard' statement is similar to an 'if', but a 'guard' statement will only run its block of code if the conditions are NOT met.
//: Let's look at a simple guard example below.

let myNumber = 10

// This function checks if the number given to it is a positive or negative value
func isMyNumberANegativeValue(myNumber: Int){
    
    // This guard condition checks if 'myNumber' is less than zero.
    // Remember, if this condition IS FALSE, the block of code within the else block will run
    // Otherwise, the function will continue
    guard myNumber < 0 else {
        print("I am positive")
        return
    }
    
    print("I am negative!")
}

isMyNumberANegativeValue(myNumber: myNumber)


//: Let's take a look at another example and see how we can use guard for optionals

let myOptionalNumber: Int? = 10

// This function just checks if the given parameter is nil or not
func isMyNumberAnOptional(myOptionalNumber: Int?){
    
    // This guard checks if 'myOptionalNumber' has a value or not. Similar concept to conditional unwrapping
    // If 'myOptionalNumber' is indeed nil, the else block will run
    // Otherwise, our guard if let statement is looking for a valid value, and the code will continue to run
    guard let myUnwrapped = myOptionalNumber else {
        
        print("This value is nil")
        return
    }
    
    // Lastly, you can see we can use the variable 'myUnwrapped' variable declared above within our entire scope of this function now
    // Very convenient!!
    // A regular 'if let' would not allow this
    print("This unwrapped value is \(myUnwrapped)")
}

isMyNumberAnOptional(myOptionalNumber: myOptionalNumber)


//: ### Challenge 2
//: Now that we've learnt this new guard statement, let's rewrite challenge 1 using the guard statements. How does it improve our current implementation?


//: [Next](@next)
