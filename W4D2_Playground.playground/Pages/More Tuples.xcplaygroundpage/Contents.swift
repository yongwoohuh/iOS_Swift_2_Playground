//: [Previous](@previous)

//: ### More Tuples
//: We already know switch statements can evaluate some value and tries to match it up with a case provided.
//: The value that a switch statements evaluate can also be a tuple!
//: The switch statement evaluates each value of the tuple individually and tries to find a match in the provided cases.
//:
//: Imagine we are rolling two six-sided dice. We can use a tuple to represent each of the dice value.

let diceRoll = (5, 6)

// Our switch statement looks for the cases where the total value of the dice rolled is 11
switch diceRoll {
case (5, 6):
    print("We got 11!")
case (6, 5):
    print("We got 11!")
default:
    print("This roll doesn't matter to us")
}

//: ### Challenge 5
//: Create a switch statement that prints out which holiday it is given the month and the day to evaluate.
//: Cover the following holidays:
//: Christmas Day - Dec 25
//: New Years Day - Jan 1
//: Valentine's Day - Feb 14
//: Halloween Day - Oct 31
//: Otherwise, indiciate the given day is not a holiday


//: [Next](@next)
