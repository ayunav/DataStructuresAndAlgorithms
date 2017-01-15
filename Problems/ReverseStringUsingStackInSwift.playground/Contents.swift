
struct Stack<T> {
    
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    func topItem() -> T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
    
    func isEmpty() -> Bool {
        return items.isEmpty ? true : false
    }

}

// count is not a part of a traditional stack data structure, so I used it here as an extension

extension Stack {
    var count: Int {
        return items.count
    }
}

// testing stack 

var stack = Stack<Character>(items: ["m", "i", "c"])
stack.topItem()
stack.isEmpty()
stack.count

// testing string

var str2 = ""
str2.append(stack.pop())
//print(stack) // uncomment to test
//print(str2)  // uncomment to test

// reverse "hello" string function using stack

var str = "hello"

func reverse(str: String) -> String {
    
    // init an empty string and a stack of type <Character>
    
    var reversedString: String = ""
    var strStack = Stack<Character>()
    
    // loop to push all the characters from argument string to the stack
    
    for var i = 0; i < str.characters.count; i++ {
        let index = str.startIndex.advancedBy(i)
        strStack.push(str.characters[index])
    }
    
    // loop to make a reversed string from popping the stack
    
    for var j = 0; j < str.characters.count; j++ {
        reversedString += String(strStack.pop())
    }

    //    print(strStack)  // uncomment to test, strStack is now empty
    return reversedString
}

print(reverse(str))
