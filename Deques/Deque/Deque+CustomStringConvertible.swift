
extension Deque: CustomStringConvertible {
    
    @inlinable
    public var description: String {
        return "[\(map({ element in String(reflecting: element) }).joined(separator: ", "))]"
    }
}

extension Deque: CustomDebugStringConvertible {
    
    @inlinable
    public var debugDescription: String {
        return "Deque(\(self))"
    }
}
