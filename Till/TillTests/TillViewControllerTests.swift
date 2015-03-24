import Quick
import Nimble
import Till
import UIKit

class TillViewControllerTests: QuickSpec {
    override func spec() {
        var controller: TillViewController!
        
        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            controller = storyboard.instantiateViewControllerWithIdentifier("TillViewControllerID") as TillViewController
        }
        
        describe("viewDidLoad") {
            beforeEach {
                let _ = controller.view
            }
            
            it("Should initialise a ShopRepository") {
                expect(controller.shopRepo).toNot(beNil())
            }
            
            it("Should initialise a shop Entity"){
                expect(controller.shop).toNot(beNil())
            }
            
            context("when adding a product to an Order") {
                var btn: UIButton!
                beforeEach() {
                    btn = UIButton()
                }
                
                it("creates a new order") {
                    controller.clientNameText.text = "Ana"
                    controller.addToBasket(btn)
                    expect(controller.order).toNot(beNil())
                }
                
                it("adds a new item to the order") {
                    controller.order = Order(clientName: "Ana")
                    controller.addToBasket(btn)
                    expect(controller.order.items.count).to(equal(1))
                }
                
                it("increases quantity by 1 when product is already in order") {
                    controller.order = Order(clientName: "Ana")
                    controller.addToBasket(btn)
                    controller.addToBasket(btn)
                    expect(controller.order.items.first!.quantity).to(equal(2))
                }
                
                it("doesn't add a new item if already in order") {
                    controller.order = Order(clientName: "Ana")
                    controller.addToBasket(btn)
                    controller.addToBasket(btn)
                    expect(controller.order.items.count).to(equal(1)
                    )
                }
            }
            
        }
    }
}
