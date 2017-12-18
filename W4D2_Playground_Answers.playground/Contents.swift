import UIKit

//: ### Challenge 1

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


func formValidation(username: String?, password: String?, email: String?){
    
    if let unwrapUsername = username {
        
        if let unwrapPassword = password {
            
            if let unwrapEmail = email {
                
                print("Username: \(unwrapUsername)")
                print("Password: \(unwrapPassword)")
                print("Email: \(unwrapEmail)")
            }
            else{
                
                print("Email is empty")
            }
        }
        else{
            
            print("Password is empty")
        }
    }
    else{
        
        print("User name is empty")
    }
}

formValidation(username: username, password: password, email: email)



//: ### Challenge 2

func formValidation2(username: String?, password: String?, email: String?){
    
    guard let unwrapUsername = username else {
        
        print("User name is empty")
        return
    }
    
    guard let unwrapPassword = password else {
        
        print("Password is empty")
        return
    }
    
    guard let unwrapEmail = email else {
        
        print("Email is empty")
        return
    }
    
    print("Username: \(unwrapUsername)")
    print("Password: \(unwrapPassword)")
    print("Email: \(unwrapEmail)")
}

formValidation2(username: username, password: password, email: email)


//: ### Challenge 3

let subViews: [UIView] = [UIButton(), UIButton(), UILabel(), UITextField(), UILabel(), UIButton()]

func findButtons(subViews: [UIView]) -> [UIButton] {
    
    var buttons = [UIButton]()
    for view in subViews {
        
        if let unwrappedView = view as? UIButton {
            buttons.append(unwrappedView)
        }
    }
    
    return buttons
}


//: Challenge 4

var mythings = [Any]()
mythings.append(13)
mythings.append(123.0)
mythings.append("testing")
mythings.append(UIButton())

for thing in mythings {
    
    if let unwrap = thing as? Int {
        
        print("I am a Int of value \(unwrap)")
    }
    
    if let unwrap = thing as? Double {
        
        print("I am a double of value \(unwrap)")
    }
    
    if let unwrap = thing as? String {
        
        print("I am a string of value \(unwrap)")
    }
}

//: Challenge 5

let holiday = (12, 25)

switch holiday {
    
case (12, 25):
    print("Christmas Day")
    
case (1, 1):
    print("New Years Day")
    
case (2, 14):
    print("Valentine's Day")
    
case (10, 31):
    print("Halloween Day")
    
default:
    print("This is not a holiday")
}


//: Challenge 6

struct Queue<Element> {
    
    var items = [Element]()
    
    mutating func enqueue(item: Element){
        
        items.append(item)
    }
    
    mutating func dequeue() -> Element {
        
        return items.removeFirst()
    }
    
    func printCurrentQueueState(){
        
        print(items)
    }
}


//: Challenge #7
enum InputError: Error {
    case NoUsername
    case NoPassword
    case NoEmail
}

func checkParameters(username: String?, password: String?, email: String?) throws{
    
    guard let unwrapUsername = username else {
        
        throw InputError.NoUsername
        return
    }
    
    guard let unwrapPassword = password else {
        
        throw InputError.NoPassword
        return
    }
    
    guard let unwrapEmail = email else {
        
        throw InputError.NoEmail
        return
    }
    
    print("Username: \(unwrapUsername)")
    print("Password: \(unwrapPassword)")
    print("Email: \(unwrapEmail)")
}

do{
    
    try checkParameters(username: username, password: password, email: email)
}
catch let error {
    
    print("Input error: \(error)")
}

//: Challenge 8

postfix operator %
postfix func % (percentage: Int) -> Double {
    
    return Double(percentage)/100.0
}

var per = 45%


//: Challenge 9

func + (array1: [Int], array2: [Int]) -> [Int]?{
    
    var arr = [Int]()
    if array1.count == array2.count {
        
        for i in 0..<array1.count {
            
            let array1Value = array1[i]
            let array2Value = array2[i]
            arr.append(array1Value + array2Value)
        }
    }
    else{
        
        return nil
    }
    return arr
}

var ha = [1,2] + [3,4,6]
print(ha)

//: Stretch Goal #2

extension Queue where Element : Numeric {
    
    func addAllNumbers(){
        
        var total: Element = 0
        for val in items {
            total = total + val
        }
        print(total)
    }
}

var queue = Queue<Int>()
queue.enqueue(item: 2)
queue.enqueue(item: 2)
queue.enqueue(item: 2)
queue.addAllNumbers()

