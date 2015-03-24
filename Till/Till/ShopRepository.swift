import Foundation

public class ShopRepository {

    let filename = "hipstercoffee"
    public var fileReader : FileReader
    public var jsonWrapper: JSONWrapper
    
    public init(){
        self.fileReader = FileReader()
        self.jsonWrapper = JSONWrapper()
    }
    
    public func getAll()-> Shop {
        let data = self.fileReader.readJson(filename)
        let dict = self.jsonWrapper.wrapp(data)
        let shop = createEntitiesFromDictionary(dict)
        
        return shop
    }
    
    private func createEntitiesFromDictionary(dict:NSDictionary) -> Shop {
        let products = self.createProducts(dict["prices"] as NSArray)
        let shopName = dict["shopName"] as String
        let address = dict["address"] as String
        let phone = dict["phone"] as String
        var shop = Shop(name: shopName , address: address, phone: phone, products: products)
        
        return shop
    }
    
    private func createProducts(arrProds: NSArray) -> [Product] {
        var products = [Product]()
        if let dictProducts = arrProds[0] as? NSDictionary {
            for prod  in dictProducts {
                let name:String = (prod.key as AnyObject? as? String) ?? ""
                let price = (prod.value as AnyObject? as? Float) ?? 0
                let product = Product(name: name , price: price)
                products.append(product)
            }
        }
        return products
    }
}