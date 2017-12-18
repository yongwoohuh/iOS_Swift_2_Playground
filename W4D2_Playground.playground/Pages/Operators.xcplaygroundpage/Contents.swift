//: [Previous](@previous)

//: ### Operators
//: An operator is a special symbol or phrase you can use to check, change or combine values.
//: Some that you are already familiar with would be '+, - /, *', the addition, subtraction, division, and multiplication.
//: There are also different types:

// Prefix operator
// The '-' can be used to turn a number into a negative value and the operator comes before the value.

let myNumberIsNegative = -2

// Infix operator
// The '+' helps us combine two values together and goes in between the values.

let addingOperator = 1 + 1

// Postfix operator
// The '!' and '?' used to handle optional values goes after a value.


// Recently, Swift has deprecated the use of '++'
// But, we can bring it back by creating our own operator
// Here, we can create our own operator with the '++' symbols
postfix operator ++
postfix func ++ (number: Int) -> Int {

    return number + 1
}

var incrementOne = 1
var incrementTwo = incrementOne++



//: Challenge 8
//: When we have percentage values, we tend to convert them into their decimal form before doing any arithmetic to them.
//: Create an operator with the '%' that will be a convenient operator to convert Int values a usable percentage value.


//: Challenge 9
//: We can also overload existing operators or change their functionality.
//: Try using the '+' on two arrays of Int together. What is the result?
//: Now let's change the functionality. Take the two arrays and sum together the values at their correspding index.
//: For example, [1,2] + [3,4] = [4,6]
//: If the array count size are not the same, then return nil



//: [Next](@next)
