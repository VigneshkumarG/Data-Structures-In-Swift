protocol LinkedList {
    associatedtype Element
    
    func insertAtBegin(_ element: Element)
    func insertAtEnd(_ element: Element)
    func insert(_ element: Element, atIndex index: Int)throws
    
    func removeFirst()throws -> Element
    func removeLast()throws -> Element
    func remove(atIndex index: Int)throws -> Element
}


enum LinkedListError: Error {
    case indexOutOfBound
    case emptyList
}
