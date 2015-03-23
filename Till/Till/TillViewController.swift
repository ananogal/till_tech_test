
import UIKit

public class TillViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    public var shopRepo: ShopRepository!
    public var shop: Shop!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        shopRepo = ShopRepository()
        shop = shopRepo.getAll()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    public func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shop.products.count
    }
    
    public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ProductCell", forIndexPath: indexPath) as ProductCell
        cell.configForCell(shop.products[indexPath.row], index: indexPath.row)
        
        return cell
    }
    
    @IBAction func addToBasket(sender: AnyObject) {
    
    }
}

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    func configForCell(product:Product, index:Int) {
        self.productNameLabel.text = product.name
        self.productPriceLabel.text = String(format: "%.2f", product.price)
        self.addButton.tag = index
    }
}
