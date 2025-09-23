
extension Deque.Index: Equatable {
    
    @inlinable
    public static func == (lhs: Deque<Element>.Index, rhs: Deque<Element>.Index) -> Bool {
        lhs._ensureValid(with: rhs)
        return lhs._offset == rhs._offset
    }
}
