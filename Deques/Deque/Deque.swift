
@frozen
public struct Deque<Element> {
    
    @usableFromInline
    internal var _head: _Node?
    
    @usableFromInline
    internal var _count: Int
    
    @usableFromInline
    internal var _version: _Version
}
