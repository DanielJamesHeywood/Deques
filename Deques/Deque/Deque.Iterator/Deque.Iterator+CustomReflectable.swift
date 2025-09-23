
extension Deque.Iterator: CustomReflectable {
    
    @inlinable
    public var customMirror: Mirror {
        get {
            return Mirror(self, children: EmptyCollection())
        }
    }
}
