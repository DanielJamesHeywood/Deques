
extension Deque {
    
    @frozen
    public struct Iterator {
        
        @usableFromInline
        internal var _head: _Node?
        
        @usableFromInline
        internal var _handle: Unmanaged<_Node>?
    }
}
