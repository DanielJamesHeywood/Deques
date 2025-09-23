
extension Deque.Index: Comparable {
    
    @inlinable
    public static func < (lhs: Deque.Index, rhs: Deque.Index) -> Bool {
        lhs._ensureValid(with: rhs)
        return lhs._offset < rhs._offset
    }
    
    @inlinable
    public static func <= (lhs: Deque.Index, rhs: Deque.Index) -> Bool {
        lhs._ensureValid(with: rhs)
        return lhs._offset <= rhs._offset
    }
    
    @inlinable
    public static func >= (lhs: Deque.Index, rhs: Deque.Index) -> Bool {
        lhs._ensureValid(with: rhs)
        return lhs._offset >= rhs._offset
    }
    
    @inlinable
    public static func > (lhs: Deque.Index, rhs: Deque.Index) -> Bool {
        lhs._ensureValid(with: rhs)
        return lhs._offset > rhs._offset
    }
}
