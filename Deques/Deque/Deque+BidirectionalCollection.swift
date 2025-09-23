
extension Deque: BidirectionalCollection {
    
    @inlinable
    public func index(before index: Index) -> Index {
        var newIndex = index
        formIndex(before: &newIndex)
        return newIndex
    }
    
    @inlinable
    public func formIndex(before index: inout Index) {
        index._ensureValid(for: self)
        if let node = index._handle?.takeUnretainedValue() {
            guard let previous = node.previous else {
                preconditionFailure()
            }
            index._handle = previous
        } else {
            index._handle = _tail
        }
        index._offset -= 1
    }
    
    @inlinable
    public func index(after index: Index) -> Index {
        var newIndex = index
        formIndex(after: &newIndex)
        return newIndex
    }
    
    @inlinable
    public func formIndex(after index: inout Index) {
        index._ensureValid(for: self)
        guard let node = index._handle?.takeUnretainedValue() else {
            preconditionFailure()
        }
        index._handle = node.next.map(Unmanaged.passUnretained)
        index._offset += 1
    }
    
    @inlinable
    public subscript(position: Index) -> Element {
        get {
            position._ensureValid(for: self)
            guard let node = position._handle?.takeUnretainedValue() else {
                preconditionFailure()
            }
            return node.element
        }
    }
    
    @inlinable
    public var startIndex: Index {
        return Index(_startOf: self)
    }
    
    @inlinable
    public var endIndex: Index {
        return Index(_endOf: self)
    }
}
