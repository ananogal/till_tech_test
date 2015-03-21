
public class ShopRepository {

    let filename = "hipstercoffee.json"
    public var fileReader : FileReader
    public var jsonWrapper: JSONWrapper
    
    public init(){
        self.fileReader = FileReader()
        self.jsonWrapper = JSONWrapper()
    }
    
    public func getAll()-> Shop {
        let data = self.fileReader.readJson(filename)
        let dict = self.jsonWrapper.wrapp(data)
        
        return Shop(name: dict["shopName"] as String, address:dict["address"] as String, phone: dict["phone"] as String, products:[Product]())
    }
    
    private func createEntitiesFromDictionary(dict:Dictionary<String, AnyObject>){
        
    }
}