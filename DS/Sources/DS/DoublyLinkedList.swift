class DoublyLinkedList<Element> {
    
    class Node<Element> {
        
        var data: Element
        
        var next: Node<Element>?
        
        weak var prev: Node<Element>?
        
        init(data: Element, next: Node<Element>? = nil, prev: Node<Element>? = nil ) {
            self.data = data
            self.next = next
            self.prev = prev
        }
    }
    
    private var head: Node<Element>? = nil
    
    private var tail: Node<Element>? {
        
        guard var node = head else {
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    
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


extension DoublyLinkedList: LinkedList
{
    func insertAtBegin(_ element: Element)  {
        
        let newNode = Node(data: element)
        
        if head == nil {
            head = newNode
        }else {
            newNode.next = head
            head = newNode
        }
    }
    
    func isEmpty() -> Bool {
        return head == nil
    }
    
    func insertAtEnd(_ element: Element)  {
        
        guard isEmpty() == false else {
            insertAtBegin(element)
            return
        }
        
        let newNode = Node(data: element)

        tail?.next = newNode
        newNode.prev = tail
    }
    
    func insert(_ element: Element, atIndex index: Int) throws {
        
    }
    
    func removeFirst() throws -> Element {
        
        guard let head = head  else {
            throw LinkedListError.emptyList
        }
        
        let removeElement = head.data
        self.head = head.next
        return removeElement
    }
    
    func removeLast() throws -> Element {
        
        guard let tail = tail else {
            throw LinkedListError.emptyList
        }
        
        guard tail.next != nil else {
            return try removeFirst()
        }
        
        let removeElement = tail.data
        
        tail.next = nil

        return removeElement
    }

    func remove(atIndex index: Int) throws -> Element {
        
        throw LinkedListError.indexOutOfBound
    }
}
