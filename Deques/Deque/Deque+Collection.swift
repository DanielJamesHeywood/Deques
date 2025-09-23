
extension Deque: Collection {
    
    @inlinable
    public var startIndex: Index {
        return Index(_startOf: self)
    }
    
    @inlinable
    public var endIndex: Index {
        return Index(_endOf: self)
    }
    
    @inlinable
    public func makeIterator() -> Iterator {
        return Iterator(_startOf: self)
    }
    
    @inlinable
    public subscript(position: Index) -> Element {
        get {
            guard let node = position._handle?.takeUnretainedValue() else {
                preconditionFailure()
            }
            return node.element
        }
    }
    
    @inlinable
    public func index(after index: Index) -> Index {
        var newIndex = index
        formIndex(after: &newIndex)
        return newIndex
    }
    
    @inlinable
    public func formIndex(after index: inout Index) {
        guard let node = index._handle?.takeUnretainedValue() else {
            preconditionFailure()
        }
        index._handle = node.next.map(Unmanaged.passUnretained)
        index._offset += 1
    }
}
