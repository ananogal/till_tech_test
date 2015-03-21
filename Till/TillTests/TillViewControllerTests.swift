import Quick
import Nimble
import Till

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
        }
    }
}
