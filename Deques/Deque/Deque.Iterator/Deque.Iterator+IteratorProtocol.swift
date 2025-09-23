
extension Deque.Iterator: IteratorProtocol {
    
    @inlinable
    public mutating func next() -> Element? {
        guard let node = _handle?.takeUnretainedValue() else {
            preconditionFailure()
        }
        if let next = node.next {
            _handle = .passUnretained(next)
        } else {
            _handle = nil
        }
        return node.element
    }
}
