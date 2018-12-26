//
//  SinglyLinkedList.swift
//  LinkedList
//
//  Created by Vigneshkumar G on 25/12/18.
//

import Foundation

class SinglyLinkedList<Element> {
    
    class LinklistNode<Element> {
        
        var data: Element
        
        var next: LinklistNode<Element>?
        
        init(data: Element, next: LinklistNode<Element>? = nil) {
            
            self.data = data
            self.next = next
        }
    }
    
    public typealias Node = LinklistNode<Element>
    
    private var head: Node? = nil

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
    private func insertAtHead(_ newNode: Node) -> Bool {
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
    
    var isEmpty: Bool{
        return head == nil
    }
    
    var first: Node?  {
        return head
    }
    
    var last: Node? {
        var temp = head
        while temp?.next == nil {
            temp = temp?.next
        }
        return temp
    }        
}
