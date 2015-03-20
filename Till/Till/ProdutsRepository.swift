
import Foundation

public class ProductsRepository {

    let filename = "hipstercoffee.json"
    public var fileReader : FileReader
    public var jsonWrapper: JSONWrapper
    
    public init(){
        self.fileReader = FileReader()
        self.jsonWrapper = JSONWrapper()
    }
    
    public func getAll()-> Array<Product> {
        let data = self.fileReader.readJson(filename)
        return []
    }
}