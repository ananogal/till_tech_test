import Quick
import Nimble
import Till

class OrderItemTests: QuickSpec {
    override func spec() {
        context("is initialised with") {
            var item: OrderItem!

            beforeEach() {
                item = OrderItem(product: Product(name: "a", price: 1.0), quantity: 1)
            }
            
            it("a product") {
                expect(item.product).toNot(beNil())
            }
            
            it("a quantity") {
                expect(item.quantity).toNot(beNil())
            }
        }
    }
}
