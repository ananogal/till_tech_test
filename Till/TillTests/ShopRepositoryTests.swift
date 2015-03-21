import Quick
import Nimble
import Till

class FakeShopRepository: ShopRepository{
    var getAllWasCalled = false
    override init(){
        super.init()
        self.fileReader = FakeFileReader()
        self.jsonWrapper = FakeJsonWrapper()
    }
    
    override func getAll() -> Shop {
        getAllWasCalled = true
        return Shop(name: "", address: "", phone: "", products: [Product]())
    }
}

class ShopRepositoryTests: QuickSpec {
    override func spec() {
        var shopRepo: FakeShopRepository!
        
        beforeEach() {
            shopRepo = FakeShopRepository()
        }
        
        it("Should be initialised with a fileReader"){
            expect(shopRepo.fileReader).toNot(beNil())
        }
        
        it("Should be initialised with a JSONDeserializer"){
            expect(shopRepo.jsonWrapper).toNot(beNil())
        }
        
        it("Should get shops"){
            shopRepo.getAll()
            expect(shopRepo.getAllWasCalled).to(beTrue())
        }
    }
}
