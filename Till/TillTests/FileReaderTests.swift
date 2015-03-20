import Quick
import Nimble
import Till

class FakeFileReader :FileReader {
    func readJson(filename:String) -> NSData{
        return "Read from file".dataUsingEncoding(NSUTF8StringEncoding)!
    }
}

class FileReaderTests: QuickSpec {
    override func spec() {
        it("Should read a file an return an NSData") {
            let reader = FakeFileReader()
            var expectedValue = "Read from file".dataUsingEncoding(NSUTF8StringEncoding)!
            expect(reader.readJson("text.json")).to(equal(expectedValue))
        }
    }
}
