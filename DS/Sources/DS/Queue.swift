//
//  Queue.swift
//  DS
//
//  Created by Vigneshkumar G on 26/12/18.
//

import Foundation

// First In First Out

enum QueueError: Error {
    case empty
}

class Queue<Element> {
    
    private let doublyLinkedList = DoublyLinkedList<Element>()
    
    func enqueue(_ element: Element)  {
        
        doublyLinkedList.insertAtEnd(element)
    }
    
    func dequeue()throws -> Element {
        
        do {
            return try doublyLinkedList.removeFirst()
        } catch  {
            throw QueueError.empty
        }                
    }
    
    func printList() {
        
        doublyLinkedList.printList()
    }
}
