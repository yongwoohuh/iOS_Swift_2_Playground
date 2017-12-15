//: [Previous](@previous)

import UIKit

//: ### Type Casting
//: Type casting is a way to check the type of an instance or treat that instance as a different superclass or subclass from somewhere in its own class hierachy.
//: There are a few operators in Swift we can use to handle type casting.
//:
//: Operator: 'is'
//: We can use the 'is' operator to check if an instance is one of its subclasses
//:
//: Operator: 'as?'
//: We can use the 'as?' to attempt a downcast of an instance. Note the '?', meaning this will return an optional value. If the downcast is not possible, nil will be returned.
//:
//: Operator: 'as!'
//: We can use the 'as!' to downcast and do a force unwrap of the value in one step. Only use this if you are sure the downcast will succeed.

//: We can look at an example using UIView and UIButton from Apple's UIKit

// Here we declare a variable of type UIView and we assign a UIButton instance to 'myView'
// This is valid since UIButton subclasses UIView
let myView: UIView = UIButton()

// Because 'myView' is a UIView, we can't call UIButton specific functions such as 'setTitle'
//myView.setTitle("Test", for: .normal) // The compiler will complain about this code!

// So we can downcast our 'myView' variable to an actual UIButton
let myCastedButtonView: UIButton? = myView as? UIButton

// The downcast returns an optiona value, so we need to ensure the downcast was successful
if let myUnwrappedButton = myCastedButtonView {
    
    // Now we can call our UIButton specific function!
    myUnwrappedButton.setTitle("Test", for: .normal)
}


//: ### Challenge 3
//: Imagine we had a UIView containing many subviews and we needed to find all the views of a specific type.
//: Write a function to search for UIButtons and returns an array of type UIButton containing all the found UIButtons.
//: You can use the below as your test data

let subViews: [UIView] = [UIButton(), UIButton(), UILabel(), UITextField(), UILabel(), UIButton()]


//: ### Challenge 4
//: You can even play with an array that can contain literally any type of object!
//: Try creating an array with the type 'Any'. Then start adding any variable type you want!
//: The 'Any' type can represent any instance type.
//: After, use a switch statement or if-let statements to go through your array and find out what variable type each item is and print out its value.


//: [Next](@next)
