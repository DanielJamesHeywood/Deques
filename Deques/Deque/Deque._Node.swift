
extension Deque {
    
    @usableFromInline
    internal class _Node {
        
        @usableFromInline
        internal let element: Element
        
        @usableFromInline
        internal var _next: _Node?
        
        @usableFromInline
        internal var _previous: Unmanaged<_Node>?
        
        @usableFromInline
        internal init(element: Element, next: _Node? = nil, previous: _Node? = nil) {
            self.element = element
            self.next = next
            self.previous = previous
        }
        
        @inlinable
        internal var next: _Node? {
            get {
                return _next
            }
            set(newNext) {
                _next?._previous = nil
                _next = newNext
                newNext?._previous?.takeUnretainedValue()._next = nil
                newNext?._previous = .passUnretained(self)
            }
        }
        
        @inlinable
        internal var previous: _Node? {
            get {
                return _previous?.takeUnretainedValue()
            }
            set(newPrevious) {
                _previous?.takeUnretainedValue()._next = nil
                _previous = newPrevious.map(Unmanaged.passUnretained)
                newPrevious?._next?._previous = nil
                newPrevious?._next = self
            }
        }
    }
}
