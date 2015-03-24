
public class Order {
    public var clientName: String
    public var items:[OrderItem]
    
    public init(clientName:String) {
        self.clientName = clientName
        self.items = [OrderItem]()
    }
    
    public func addItem(item:OrderItem) {
        self.items.append(item)
    }
}
