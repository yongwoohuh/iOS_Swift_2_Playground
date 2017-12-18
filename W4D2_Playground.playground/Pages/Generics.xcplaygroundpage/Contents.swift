//: [Previous](@previous)

//: Generics
//: Generics allow us to write flexible and reusable code that can take in any variable type.
//: For example, if we want to write a function that prints two numbers for us, we might have to write a function for each type of number variable.

func printMyTwoNumbersInt(num1: Int, num2: Int){
    
    print("My numbers are \(num1) and \(num2)")
}

func printMyTwoNumbersDouble(num1: Double, num2: Double){
    
    print("My numbers are \(num1) and \(num2)")
}

func printMyTwoNumbersFloat(num1: Float, num2: Float){
    
    print("My numbers are \(num1) and \(num2)")
}

//: Instead, we can write a function that takes a generic type so we can print any two values

func printMyTwoNumbers<Element>(num1: Element, num2: Element){
    
    print("My numbers are \(num1) and \(num2)")
}

printMyTwoNumbers(num1: 1, num2: 1)
printMyTwoNumbers(num1: 2.0, num2: 2.1)
printMyTwoNumbers(num1: "three", num2: "four")


//: You have also been using collections that use generic types. Both arrays and dictionaries use a generic type. You can define any variable type for those collections to store.


//: ### Challenge 6
//: During class you saw a simple implementation of a stack where data is inserted (pushed) to the top of the stack when data is added. When data is removed (pop) from the stack, it removes the first item at the top of the stack.
//: We will know implement a similar data structure called a "queue" as a generic.
//: You can think of a queue like a line up at a grocery store. The first person in line finishes their transaction, and then leaves the line up. Any new customers have to start at the back of the line up.
//: Create a "Queue" data structure with the following functions:
//: enqueue: add an item to the queue
//: dequeue: remove an item from the queue, and return the removed element



//: [Next](@next)
