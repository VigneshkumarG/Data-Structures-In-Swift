class Stack<Element> {
    
    class Node<Element> {
        
        var data: Element
        
        var next: Node<Element>?
        
        init(data: Element) {
            self.data = data
            self.next = nil
        }
    }
    
    private var top: Node<Element>? = nil
    
    // Push
    
    func push(_ element: Element)  {
        
        let newNode = Node.init(data: element)
        
        if top == nil {
            top = newNode
        }else {
            newNode.next = top
            top = newNode
        }
    }
    
    // Pop
    
    func pop() -> Element? {
        if let top = top {
            self.top = top.next
            return top.data
        }
        return nil
    }
    
    // Get Top
    
    func getTop() -> Element? {
        return top?.data
    }
    
    // Print Stack
    
    func printStack()  {
        
        if top == nil {
            print("No Element found")
            return
        }
        var temp = top
        
        var str = "Stack: "
        
        while temp != nil {
            str.append("\(temp!.data) -> ")
            temp = temp?.next
        }
        print(str)
    }
}


let stack = Stack<Int>()

stack.push(10)

stack.printStack()

stack.push(20)

stack.printStack()

stack.push(30)

stack.printStack()

print(stack.getTop() ?? "No element found" )


print(stack.pop() ?? "")

stack.printStack()

print(stack.pop() ?? "")

stack.printStack()

print(stack.pop() ?? "")

stack.printStack()
