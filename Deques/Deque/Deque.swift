
@frozen
public struct Deque<Element> {
    
    @usableFromInline
    internal var _head: _Node?
    
    @usableFromInline
    internal var _tail: Unmanaged<_Node>?
    
    @usableFromInline
    internal var _count: Int
    
    @usableFromInline
    internal var _version: _Version
    
    @inlinable
    public init() {
        self._head = nil
        self._tail = nil
        self._count = 0
        self._version = _Version()
    }
}

extension Deque {
    
    @inlinable
    public mutating func append(_ newElement: Element) {
        _invalidateIndices()
        let newNode = _Node(element: newElement)
        if let node = _tail?.takeUnretainedValue() {
            node.next = newNode
        } else {
            _head = newNode
        }
        _tail = .passUnretained(newNode)
        _count += 1
    }
}

extension Deque {
    
    @inlinable
    internal mutating func _invalidateIndices() {
        if !isKnownUniquelyReferenced(&_version) {
            _version = _Version()
        }
    }
}
