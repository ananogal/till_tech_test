import Quick
import Nimble
import Till

class FakeJsonWrapper:JSONWrapper{
    override func wrapp(data: NSData) -> NSDictionary{
        return NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
    }
}

class JSONWrapperTests: QuickSpec {
    override func spec() {
        it("should return an NSDictionary"){
            let wrapper = FakeJsonWrapper()
            let data = "[{\"hello\":2.0}]".dataUsingEncoding(NSUTF8StringEncoding)!
            let expectedValue = ["hello" :2.0] as NSDictionary
            expect(wrapper.wrapp(data)).to(equal(expectedValue))
        }
    }
}
