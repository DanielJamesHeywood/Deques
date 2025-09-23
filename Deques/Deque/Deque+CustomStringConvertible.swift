
extension Deque: CustomStringConvertible {
    
    @inlinable
    public var description: String {
        return "[\(map({ element in String(reflecting: element) }).joined(separator: ", "))]"
    }
}
