
import Foundation

public struct Product {
    var name: String
    var price: Float
    
    public init(name: String, price: Float) {
        self.name = name
        self.price = price
    }
}

extension Product : Equatable {}

public func ==(productA: Product, productB: Product) -> Bool {
    return productA.name == productB.name && productA.price == productB.price
}