protocol LinkedList {
    associatedtype Element
    
    func insertAtBegin(_ element: Element)
    func insertAtEnd(_ element: Element)
    func insert(_ element: Element, atIndex index: Int)throws
    
    func removeFirst()
    func removeLast()
    func remove(atIndex index: Int)
}


enum LinkedListError: Error {
    case indexOutOfBound
}
