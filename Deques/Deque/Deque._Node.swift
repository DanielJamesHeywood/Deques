
extension Deque {
    
    @usableFromInline
    internal class _Node {
        
        @usableFromInline
        internal let element: Element
        
        @usableFromInline
        internal let next: _Node?
        
        @usableFromInline
        internal let previous: Unmanaged<_Node>?
        
        @usableFromInline
        internal init(element: Element, next: _Node? = nil, previous: _Node? = nil) {
            self.element = element
            self.next = next
            self.previous = previous.map(Unmanaged.passUnretained)
        }
    }
}
