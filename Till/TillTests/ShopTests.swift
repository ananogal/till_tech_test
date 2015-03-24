import Quick
import Nimble
import Till

class ShopTests: QuickSpec {
    override func spec() {
        context("is initialised with") {
            var shop :Shop!
            beforeEach() {
                shop = Shop(name: "Shop", address: "Address of the shop", phone: "087387324768", products: [Product]())
            }
            
            it("a name") {
                expect(shop.name).toNot(beNil())
            }
            
            it("an address") {
                expect(shop.address).toNot(beNil())
            }
            
            it("a phone") {
                expect(shop.phone).toNot(beNil())
            }
            
            it("products") {
                expect(shop.products).toNot(beNil())
            }
        }
        
        context("Products") {
            var shop: Shop!
            let product1 = Product(name: "product1", price: 2.89)
            let product2 = Product(name: "product2", price: 4.56)
            beforeEach() {
                let products = [product1, product2]
                shop = Shop(name: "Shop", address: "Address of the shop", phone: "087387324768", products: products)
            }
            
            it("can return a product by index") {
                let actual = shop.productByIndex(1)
                expect(actual).to(equal(product2))
            }
        }
    }
}
