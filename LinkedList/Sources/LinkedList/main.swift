
class LinkedList<Element> {
    
    class Node<Element> {
        
        var data: Element
        
        var next: Node<Element>?
        
        init(data: Element, next: Node<Element>? = nil) {
            
            self.data = data
            self.next = next
        }
    }
    
    private var head: Node<Element>? = nil
    
    private var tail: Node<Element>? = nil
    
    // Insert at Begin
    
    func insertAtBegin(_ element: Element)  {
        
        let newNode = Node(data: element)
        
        if head == nil {
            head = newNode
            tail = newNode
        }else{
            newNode.next = head
            head = newNode
        }
    }
    
    // Insert At End
    
    func insertAtEnd(_ element: Element)  {
        
        let newNode = Node(data: element)
        
        if tail == nil {
            tail = newNode
            head = newNode
        }else {
            tail?.next = newNode
            tail = newNode
        }
    }
    
    // Print List
    
    func printList()  {
        
        var str = ""
        
        var temp = head
        
        while temp != nil {
            str.append("\(temp!.data) -> ")
            temp = temp?.next
        }
        print(str)
    }
}


let list = LinkedList<Int>()

list.insertAtBegin(10)

list.insertAtEnd(20)

list.insertAtBegin(30)

list.printList()

