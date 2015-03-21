import Quick
import Nimble
import Till

class FakeJsonWrapper:JSONWrapper{
    var wrappWasCalled = false
    
    override func wrapp(data: NSData) -> Dictionary<String, AnyObject>{
        wrappWasCalled = true
        return Dictionary<String, AnyObject>()
    }
}

class JSONWrapperTests: QuickSpec {
    override func spec() {
        it("should return an Dictionary"){
            let wrapper = FakeJsonWrapper()
            wrapper.wrapp(NSData())
            expect(wrapper.wrappWasCalled).to(beTrue())
        }
    }
}
