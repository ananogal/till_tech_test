
public class Shop{
    
    var shopName: String
    var address: String
    var phone: String
    var products: [Product]
    
    public init(name: String, address: String, phone: String, products: [Product]){
        self.shopName = name
        self.address = address
        self.phone = phone
        self.products = products
    }
    
}