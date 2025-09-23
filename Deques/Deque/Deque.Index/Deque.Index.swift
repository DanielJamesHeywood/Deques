
extension Deque {
    
    @frozen
    public struct Index {
        
        @usableFromInline
        internal var _handle: Unmanaged<_Node>?
        
        @usableFromInline
        internal var _offset: Int
        
        @usableFromInline
        internal let _version: _Version
        
        @inlinable
        internal init(_startOf base: Deque) {
            self._handle = base._head.map(Unmanaged.passUnretained)
            self._offset = 0
            self._version = base._version
        }
        
        @inlinable
        internal init(_endOf base: Deque) {
            self._handle = nil
            self._offset = base._count
            self._version = base._version
        }
    }
}

extension Deque.Index {
    
    @inlinable
    internal func _ensureValid(for base: Deque) {
        precondition(_version === base._version)
    }
    
    @inlinable
    internal func _ensureValid(with other: Deque.Index) {
        precondition(_version === other._version)
    }
}
