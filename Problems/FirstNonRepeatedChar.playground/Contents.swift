/* Write a function that prints the first non-repeated character in a string */

import UIKit

let strTotal  = "total"  // -> prints "o"
let strTeeter = "teeter" // -> prints "r"

enum Seen {
    case seenOnce
    case seenMultiple
}


// O(n)

func printFirstNonRepeatedChar(str: String) {
    
    if str.isEmpty == true {
        print("The string is empty. Please try another string.")
        return
    }
    
    // create dict
    var dict = [Character: Seen]()
    
    // loop through str.characters
    // if dict.contains char, set value to seenMultiple
    // else set value to seenOnce
    
    for char in str.characters {
        if dict.keys.contains(char) {
            dict.updateValue(Seen.seenMultiple, forKey: char)
        } else {
            dict.updateValue(Seen.seenOnce, forKey: char)
        }
    }
    
    // loop through the str again in order of characters
    // print the first character whose value is equal to seenOnce
    
    for char in str.characters {
        if dict[char] == Seen.seenOnce {
            print(char)
            return
        }
    }
    
    if dict.values.contains(Seen.seenOnce) == false {
        print("There are no unique characters in this string.")
    }
}


// Uncomment the code below to run the function
/*
 
// O(n2)

 func printFirstNonRepeatedChar(str: String) {

    if str.isEmpty == true {
        print("The string is empty. Please try another string.")
        return
    }

    // loop through every char in the string
    for (idx, char) in str.characters.enumerated() {
        var seen = false
        // print("idx is \(idx), char is \(char)")

        // make another loop to compare every char in the string in the first loop to all other chars in the string
        for x in 0..<str.characters.count where x != idx {
            
            // print("x is \(x)")
            // print("char is \(str[str.index(str.startIndex, offsetBy: x)])")

            if char == str[str.index(str.startIndex, offsetBy: x)] {
                seen = true
                break
            }
        }
        
        if seen == false {
            print(char)
            break
        }
    }
}

*/


printFirstNonRepeatedChar(str: strTotal)
printFirstNonRepeatedChar(str: strTeeter)

// Edge cases: 

// no unique characters
printFirstNonRepeatedChar(str: "aavrddkvark")

// empty string
printFirstNonRepeatedChar(str: "")
