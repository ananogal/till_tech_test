
import UIKit

public class TillViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    public var shopRepo: ShopRepository!
    public var shop: Shop!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        shopRepo = ShopRepository()
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
}

