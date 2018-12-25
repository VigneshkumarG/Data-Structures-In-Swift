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
    
    private var tail: Node<Element>? = nil
}


extension DoublyLinkedList: LinkedList
{
    func insertAtBegin(_ element: Element)  {
        
        let newNode = Node(data: element)
        
        if head == nil {
            
            head = newNode
            tail = newNode
        }else {
            
            newNode.next = head
            head = newNode
        }
    }
    
    
    func insertAtEnd(_ element: Element)  {
        
        let newNode = Node(data: element)
        
        tail?.next = newNode
        newNode.prev = tail
        tail = newNode
    }
    
    func insert(_ element: Element, atIndex index: Int) {
        
    }
    
    func removeFirst() {
        
    }
    
    func removeLast() {
        
    }
    
    func remove(atIndex index: Int) {
        
    }
}
