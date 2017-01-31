import UIKit

let strCat     = "cat"
let strRacecar = "racecar"


// O(n2)

func isPalindrome(str: String) -> Bool {
    
    if str.isEmpty == true {
        print("The string is empty. Please try another string.")
        return false
    }
 
    let reversedStr = str.characters.reversed()
    
    for (idx, char) in str.characters.enumerated() {
        for (ridx, rchar) in reversedStr.enumerated() where idx == ridx {
            if char != rchar {
                return false
            }
        }
    }
    
    return true
}

isPalindrome(str: strCat)
isPalindrome(str: strRacecar)
isPalindrome(str: "")


// O(n/2) or O(n)

func isPalindromeOptimized(str: String) -> Bool {
    
    if str.isEmpty == true {
        print("The string is empty. Please try another string.")
        return false
    }
    
    let middle = str.characters.count/2
    
    var isPalindrome = true
    
    for i in 0..<middle {
        
        if str[str.index(str.startIndex, offsetBy: i)] != str[str.index(str.endIndex, offsetBy: -1-i)] {
        
            isPalindrome = false
            return isPalindrome
        }
    }
    
    if isPalindrome == true {
        return isPalindrome
    }
}

isPalindromeOptimized(str: strCat)
isPalindromeOptimized(str: strRacecar)
isPalindromeOptimized(str: "amma")
isPalindromeOptimized(str: "")


// O(n)

func isPalindromeOneLiner(str: String) -> Bool {
    return String(str.characters.reversed()) == str
}

isPalindromeOneLiner(str: strCat)
isPalindromeOneLiner(str: strRacecar)
