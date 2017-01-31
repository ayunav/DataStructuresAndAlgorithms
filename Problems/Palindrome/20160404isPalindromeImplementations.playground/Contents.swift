import UIKit

/*
// FOR LOOP STRING LENGTH/2

func isPalindrome(word: String) -> Bool {
    
    let wordLength = word.characters.count
    
    for i in 0...wordLength/2 {
        if (Array(word.characters)[i] != Array(word.characters)[wordLength - i - 1]) {
            return false
        }
    }
    
    return true
}
*/


// REVERSE A STRING AND COMPARE TO THE ORIGINAL STRING

func isPalindrome(word: String) -> Bool {
    return String(word.characters.reversed()) == word
}


/*
// FOR LOOP, NEW REVERSE STRING

func isPalindrome(word: String) -> Bool {
    var reverse = ""
    
    for character in word.characters {
        let char = "\(character)"
        reverse = char + reverse
    }
    
    if word == reverse {
        return true
    }
    return false
}
*/


/*
// STACK

struct Stack<T> {
    var items: [T]
    
    mutating func push(element: T) {
        items.append(element)
    }
    
    mutating func pop(element: T) -> T {
        items.removeLast()
        return element
    }
    
    func count() -> Int {
        return items.count
    }
}


func isPalindrome(word: String) -> Bool {
    
    var stack        = Stack<Character>(items: Array(word.characters))
    var reverseStack = Stack<Character>(items: Array(word.characters).reversed())

    for i in 0..<stack.count() {

        if stack.pop(element: stack.items[i]) != reverseStack.pop(element: stack.items[i]) {
            return false
        }
    }
    return true
}
*/
 
print(isPalindrome(word: "racecar"))
print(isPalindrome(word: "not"))

