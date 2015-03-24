import Quick
import Nimble
import Till

class OrderTests: QuickSpec {
    override func spec() {
        it("should be initialised with a client name") {
            let order = Order(clientName: "Ana")
            expect(order.clientName).toNot(beNil())
        }
        
        it("should initialise itemOrders") {
            let order = Order(clientName: "Ana")
            expect(order.items).toNot(beNil())
        }
    }
}
