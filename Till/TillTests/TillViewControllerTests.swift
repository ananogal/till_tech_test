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
            
            it("loads Products into collection"){
                let products = controller.getProducts()
                expect(products.count) > 0
            }
        }
    }
}
