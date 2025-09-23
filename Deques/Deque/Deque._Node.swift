
extension Deque {
    
    @usableFromInline
    internal class _Node {
        
        @usableFromInline
        internal let element: Element
        
        @usableFromInline
        internal let next: _Node?
        
        @inlinable
        internal init(element: Element, next: _Node? = nil) {
            self.element = element
            self.next = next
        }
    }
}
