//: Playground - noun: a place where people can play

import UIKit

class Stack<T> {
    // filo, first in, last out
    
    fileprivate var arr = [T]()
    
    func push(element: T) {
        arr.append(element)
        print(arr.map( { "\($0)" } ))
    }
    
    func pop(element: T) -> T? {
        return arr.popLast() // popLast returns an optional value , use removeLast for non-optional element
    }
    
    func size() -> Int {
        return arr.count
    }
    
    func peek() -> T? {
        return arr.last
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
    }
}

var stack = Stack<Int>()

//stack.push(element: 2)
stack.pop(element: 2)
//stack.push(element: 3)
stack.push(element: 4)
//stack.size()
stack.isEmpty()
stack.peek()
//stack.push(element: 5)



// other implementations:
// RW: https://github.com/raywenderlich/swift-algorithm-club/blob/master/Stack/Stack.playground/Contents.swift
// Wayne Bishop: https://github.com/waynewbishop/SwiftStructures/blob/master/Source/Factories/Stack.swift




