
import UIKit

public class TillViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    public var shopRepo: ShopRepository!
    public var shop: Shop!
    public var order: Order!
    
    @IBOutlet public weak var clientNameText: UITextField!
    
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
    
    @IBAction public func addToBasket(sender: UIButton) {
        if(hasOrder()) {
            let product = self.shop.productByIndex(sender.tag)
            let itemOrder = self.order.items.filter{$0.product == product}
            if itemOrder.count > 0 {
                var item = itemOrder.first!
                item.quantity += 1
            }
            else {
                addItemToOrder(product)
            }
        }
        else if hasClientName(){
            self.order = Order(clientName: clientNameText.text)
        }
        else {
            showAlert("Please insert the client name")
        }
    }
    
    func addItemToOrder(product: Product) {
        let item = OrderItem(product: product, quantity: 1)
        self.order.addItem(item)
    }
    
    func hasOrder() -> Bool {
        return self.order != nil
    }
    
    func hasClientName() -> Bool {
        return !clientNameText.text.isEmpty
    }
    
    func showAlert(message:String){
        let alert = UIAlertController(title: "", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){ action -> Void in
        }
        alert.addAction(cancelAction)
        self.presentViewController(alert, animated: true, completion: nil)
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
