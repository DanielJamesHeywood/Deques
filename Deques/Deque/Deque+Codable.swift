
extension Deque: Encodable where Element: Encodable {
    
    @inlinable
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        for element in self {
            try container.encode(element)
        }
    }
}

extension Deque: Decodable where Element: Decodable {
    
    @inlinable
    public init(from decoder: any Decoder) throws {
        self.init()
        var container = try decoder.unkeyedContainer()
        while !container.isAtEnd {
            self.append(try container.decode(Element.self))
        }
    }
}
