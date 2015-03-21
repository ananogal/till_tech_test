import Quick
import Nimble
import Till

class FakeFileReader :FileReader {
    var readJsonWasCalled = false
    
    override func readJson(fileName: String) -> NSData {
        readJsonWasCalled = true
        return NSData()
    }
    
}

class FileReaderTests: QuickSpec {
    override func spec() {
        it("Should read a JSON file") {
            let reader = FakeFileReader()
            reader.readJson("file.json")
            expect(reader.readJsonWasCalled).to(beTrue())
        }
    }
}
