
public class OrderItem {
    public var product: Product
    public var quantity: Int
    
    public init(product: Product, quantity: Int) {
        self.product = product
        self.quantity = quantity
    }
}