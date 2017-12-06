// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Generics.html


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


var exampleStack = Stack<Character>(items: ["h", "e", "l", "l", "o", "w", "o", "r", "l"])

exampleStack.push("d")
exampleStack.push("!")
exampleStack.pop()
exampleStack.topItem()
exampleStack.isEmpty()
exampleStack.count

print(exampleStack)