// Two words are said to be anagrams of each other if the letters from one word can be rearranged to form the other word. For example "abc" and "cab" are anagram strings. 

// Two strings are anagrams if all characters in both strings occur same number of times. In the example above, every character 'a', 'b' and 'c' occur only one time in both strings.

let str1 = "abc"
let str2 = "cab"
let str3 = "dog"

func stringIsAnagram(str1: String, str2 : String) -> Bool {
    var dict1 = [Character: Int]()
    var dict2 = [Character: Int]()

    var count = 0
    
    for char in str1.characters {
        if (dict1[char] != nil) {
            dict1[char] = count++
        } else {
            dict1[char] = count
        }
    }
    
    for char in str2.characters {
        if (dict2[char] != nil) {
            dict2[char] = count++
        } else {
            dict2[char] = count
        }
    }
    
    if dict1 == dict2 {
        return true
    }
    return false
}

stringIsAnagram(str1, str2: str2)
stringIsAnagram(str1, str2: str3)