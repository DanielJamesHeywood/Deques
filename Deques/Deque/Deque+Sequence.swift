
extension Deque: Sequence {
    
    @inlinable
    public func makeIterator() -> Iterator {
        return Iterator(_startOf: self)
    }
}
