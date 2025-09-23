
extension Deque {
    
    @frozen
    public struct Iterator {
        
        @usableFromInline
        internal var _handle: Unmanaged<_Node>?
    }
}
