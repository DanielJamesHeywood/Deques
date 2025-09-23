
extension Deque: Sequence {
    
    @inlinable
    public func makeIterator() -> Iterator {
        return Iterator(_startOf: self)
    }
    
    @inlinable
    public var underestimatedCount: Int {
        get {
            return _count
        }
    }
}
