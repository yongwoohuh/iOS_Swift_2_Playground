//: [Previous](@previous)

//: ### Do Try Catch
//:

enum DivideError: Error {
    case CannotDivideByZero
}

func divideNumbers( num1: Double, num2: Double ) throws -> Double{
    
    if num2 == 0 {
        
        throw DivideError.CannotDivideByZero
    }
    
    return num1 / num2
}

//: [Next](@next)
