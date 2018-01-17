//: [Previous](@previous)

import UIKit

/*:
 ## Type Casting
 Type casting is a way to check the type of an instance or treat that instance as a different superclass or subclass from somewhere in its own class hierachy. There are a few operators in Swift we can use to handle type casting.
 */
/*:
 - Callout(Operator: 'is'):
 We can use the 'is' operator to check if an instance is one of its subclasses
 */
/*:
 - Callout(Operator: 'as?'):
 We can use the 'as?' to attempt a downcast of an instance. Note the '?', meaning this will return an optional value. If the downcast is not possible, nil will be returned.
 */
/*:
 - Callout(Operator: 'as!'):
 We can use the 'as!' to downcast and do a force unwrap of the value in one step. Only use this if you are sure the downcast will succeed.
 */

//: We can look at an example using UIView and UIButton from Apple's UIKit

// Here we declare a variable of type UIView and we assign a UIButton instance to 'myView'
// This is valid since UIButton subclasses UIView
let myView: UIView = UIButton()

/*:
 - Experiment:
 Try using the `is` operator on `myView`. Take a look on the right side to see what the results are. ie: myView is UIView
 */


/*:
 - Experiment:
 Because 'myView' is a UIView, we can't call UIButton specific functions such as 'setTitle'
 */

//myView.setTitle("Test", for: .normal) // The compiler will complain about this code!


/*:
 - Experiment:
 Here we downcast our `myView` variable to an actual UIButton using `as?`. Try changing the type of class you downcast to and check what the behaviour is. For example, what happens when you try to downcast `myView` to a `UITableView`? What happens if you use `as!`?
 */
let myCastedButtonView: UIButton? = myView as? UIButton


/*:
 - Experiment:
 Now that we downcast our `myView` to an actual UIButton, use conditional unwrapping to ensure it is not nil, then try calling the `setTitle` method to ensure it can be called.
 */


/*:
 - Callout(Challenge):
 Imagine we had a UIView containing many subviews and we needed to find all the views of a specific type. Write a function to search for UIButtons and returns an array of type UIButton containing all the found UIButtons. You can use the below as your test data
 */
let subViews: [UIView] = [UIButton(), UIButton(), UILabel(), UITextField(), UILabel(), UIButton()]


/*:
 - Callout(Challenge - Part 1):
 Finish the implementation of the `Movie` class and `Song` class. The `Movie` class will have a new property to store the director's name. The `Song` class will have a new property to store the artist's name. Ensure you add their respective initializer methods as well to setup their properties.
 */

class MediaItem{
    var name: String
    init(name: String){
        self.name = name
    }
}

class Movie: MediaItem {
}

class Song: MediaItem {
}

/*:
 - Callout(Challenge - Part 2):
 Now take the array below of MediaItems and create a for loop on the array that prints out what type of media item it is and print out their properties.
 */
/*
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
 */

//: [Next](@next)
