
import UIKit

public class TillViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var products: ProductsRepository!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    public func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ProductCell", forIndexPath: indexPath) as UICollectionViewCell
        
        return cell
    }
    
    public func getProducts() -> Array<Product>{
        products = ProductsRepository()
        return products.getAll()
    }
    
}

