import Quick
import Nimble
import Till

class ProductsRepositoryTests: QuickSpec {
    override func spec() {
        var productsRepo: ProductsRepository!
        
        beforeEach() {
            productsRepo = ProductsRepository()
        }
        
        it("Should be initialised with a fileReader"){
            expect(productsRepo.fileReader).toNot(beNil())
        }
        
        it("Should be initialised with a JSONDeserializer"){
            expect(productsRepo.jsonWrapper).toNot(beNil())
        }
        
        it("Should return an array of Products") {
            let expectedValue = Product()
            expect(productsRepo.getAll()).to(contain(expectedValue))
        }
    }
}
