
public struct Shop{
    
    public var name: String
    public var address: String
    public var phone: String
    public var products: [Product]
    
    public init(name: String, address: String, phone: String, products: [Product]){
        self.name = name
        self.address = address
        self.phone = phone
        self.products = products
    }
    
    public func productByIndex(index:Int) -> Product {
        return self.products[index]
        //        return index >= 0 ? self.products[index] : nil
    }
}