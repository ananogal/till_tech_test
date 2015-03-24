import Quick
import Nimble
import Till

class OrderTests: QuickSpec {
    override func spec() {
        var order: Order!
        beforeEach(){
            order = Order(clientName: "Ana")
        }
        
        context("is initialised with"){
            it("a client name") {
                expect(order.clientName).toNot(beNil())
            }
            
            it("itemOrders") {
                expect(order.items).toNot(beNil())
            }
        }
        
        context("with itemOrders") {
            
            it("can add one"){
                let item = OrderItem(product: Product(name: "Ana", price: 1), quantity: 1)
                order.addItem(item)
                expect(order.items.count).to(equal(1))
            }
        }
        
    }
}
