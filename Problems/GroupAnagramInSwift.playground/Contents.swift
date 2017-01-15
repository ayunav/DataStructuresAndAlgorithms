// Two words are said to be anagrams of each other if the letters from one word can be rearranged to form the other word. For example "abc" and "cab" are anagram strings. 

// Given a list of strings, print the strings in groups that are anagrams of each other

// https://leetcode.com/problems/anagrams/

func stringToDict(str: String) -> (Dictionary<Character, Int>) {
    
    var dict = [Character: Int]()
    var count = 1
    
    for char in str.characters {
        if (dict[char] != nil) {
            dict[char] = count++
        } else {
            dict[char] = count
        }
    }

    return dict
}


func stringIsAnagram(str1: String, str2 : String) -> Bool {
    
    let dict1 = stringToDict(str1)
    let dict2 = stringToDict(str2)
   
    if dict1 == dict2 {
        return true
    }
    return false
}


struct Word {
    var value: String
    var index: Int
}



//func groupAnagrams(arr: Array<String>) {
//    
//    var indexesMap = [Int : String]()
//    
//    // map original arr of strings to the original indexes in the arr
//    for var i = 0; i < arr.count; i++ {
//        indexesMap[i] = arr[i]
//    }
//    
//    (indexesMap)
//    
//    var imCopy = indexesMap
//    //var arrCopy = [String]()
//    // sort each string in the array, create a copy of the arr, sort strings in the arr, so all the anagrams are next to each other
//    for str in indexesMap.values {
//        var sortedString = String(Array(str.characters.sort()))
//        imCopy.updateValue(sortedString, forKey: )
//    }
//    arrCopy // all strings are sorted individually
//    arrCopy.sort() // sorted array, all anagrams are next to each other
//    
//    
//  
//    // Step 4: Now all words in dupArray are together, but these
//    // words are changed. Use the index member of word struct to
//    // get the corresponding original word
////    for (car i = 0; i < size; ++i)
////    print("\(wordArr[dupArray->array[i].index])");
//}


let str1 = "abc"
let str5 = "ice"
let str3 = "dog"
let str4 = "god"
let str2 = "cab"

stringIsAnagram(str1, str2: str2) // should be true
stringIsAnagram(str1, str2: str3) // should be false


let arr = [str1, str5, str3, str4, str2] // ["abc", "ice", "dog", "god", "cab"]
arr.count

groupAnagrams(arr) // should print ["abc", "cab", "dog", "god"]


func groupAnagrams(arr: Array<String>) {
    
    var dictArr = Array<Dictionary<Character, Int>>()
   
    var index = 0
    
    for (var i = 0; i < arr.count; i++) {
        for (var j = i+1; j < arr.count; j++) {
        
        if stringToDict(arr[i]) == stringToDict(arr[j])
    }
    

    // loop through the array of strings, hash each string and add the new dict to an array of dictionaries

//    for str in arr {
//        dictArr.insert(stringToDict(str), atIndex: index++)
//    }
    
    var printAnagramsArr: Array<Array<Character>> = []
    
    // loop through an array of dictionaries, compare 
    
    for (var i = 0; i < dictArr.count; i++) {
        for (var j = i+1; j < dictArr.count; j++) {
            if dictArr[i] == dictArr[j] {
                var tempStr = Array<Character>(dictArr[i].keys)
                printAnagramsArr.append(tempStr)
            }
        }
    }
    
    print(dictArr)
    print(printAnagramsArr)
}
