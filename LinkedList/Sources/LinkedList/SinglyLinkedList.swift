//
//  SinglyLinkedList.swift
//  LinkedList
//
//  Created by Vigneshkumar G on 25/12/18.
//

import Foundation

class SinglyLinkedList<Element> {
    
    class Node<Element> {
        
        var data: Element
        
        var next: Node<Element>?
        
        init(data: Element, next: Node<Element>? = nil) {
            
            self.data = data
            self.next = next
        }
    }
    
    private var head: Node<Element>? = nil
    
    // Insert at Begin
    
//    func insertAtBegin(_ element: Element)  {
//
//        let newNode = Node(data: element)
//
//        if head == nil {
//            head = newNode
//        }else{
//            newNode.next = head
//            head = newNode
//        }
//    }
//
//    // Insert At End
//
//    func insertAtEnd(_ element: Element)  {
//
//        let newNode = Node(data: element)
//
//        if tail == nil {
//            tail = newNode
//            head = newNode
//        }else {
//            tail?.next = newNode
//            tail = newNode
//        }
//    }
//
//    // Remove First Element
//
//    func removeFirst() -> Element? {
//        if let head = head {
//            self.head = head.next
//            return head.data
//        }
//        return nil
//    }
//
//    func removeLast() -> Element? {
//
//        // 0 element case
//        if head == nil {
//            return nil
//        }
//
//        // 1 element case
//
//        if head?.next == nil, let head = head {
//            self.head = nil
//            self.tail = nil
//            return head.data
//        }
//
//        // more than 1 case
//
//        var currentNode = head
//
//        while currentNode?.next?.next != nil {
//            currentNode = currentNode?.next
//        }
//
//        let removeNode = currentNode?.next
//        currentNode?.next = nil
//        return removeNode?.data
//    }
    
 //    Print List

    func printList()  {

        if head == nil  {
            print("Empty List")
            return
        }
        var str = ""

        var temp = head

        while temp != nil {
            str.append("\(temp!.data) -> ")
            temp = temp?.next
        }
        print(str)
    }
}

extension SinglyLinkedList: LinkedList
{
    private func insertAtHead(_ newNode: Node<Element>) -> Bool {
        guard head != nil else {
            head = newNode
            return true
        }
        return false
    }
    
    func insertAtBegin(_ element: Element) {
        let newNode = Node(data: element)
        guard insertAtHead(newNode) == false else {
            return
        }
        newNode.next = head
        head = newNode
    }
    
    func insertAtEnd(_ element: Element) {
        
        let newNode = Node(data: element)
        guard insertAtHead(newNode) == false else {
            return
        }
        var temp = head
        while temp?.next != nil {
            temp = temp?.next
        }
        temp?.next = newNode
    }
    
    func insert(_ element: Element, atIndex index: Int) throws {
        throw LinkedListError.indexOutOfBound
    }
    
//    func insert(_ element: Element, atIndex index: Int)throws {
//
//        guard index > 0 else   {
//            insertAtBegin(element)
//            return
//        }
//
//        let newNode = Node(data: element)
//
//        var temp = head
//
//        var counter = 1
//
//        while temp?.next != nil && counter < index  {
//            counter = counter + 1
//            temp = temp?.next
//        }
//        if counter < index {
//            throw LinkedListError.indexOutOfBound
//        }else {
//            temp?.next = newNode
//        }
//    }
    
    func removeFirst() {        
        head =  head?.next
    }
    
    func removeLast() {
        if head?.next == nil {
            removeFirst()
            return
        }
        var temp = head
        while temp?.next?.next != nil {
            temp = temp?.next
        }
        temp?.next = nil
    }
    
    func remove(atIndex index: Int) {
        
    }
}
