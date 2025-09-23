
extension Deque {
    
    @frozen
    public struct Iterator {
        
        @usableFromInline
        internal var _head: _Node?
        
        @usableFromInline
        internal var _handle: Unmanaged<_Node>?
        
        @inlinable
        internal init(_startOf base: Deque) {
            _head = base._head
            _handle = base._head.map(Unmanaged.passUnretained)
        }
    }
}
