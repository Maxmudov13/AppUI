import UIKit

class FirstViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
        
    }

    @IBOutlet weak var CollactionView: UICollectionView!
    
    let numberOfColumns: CGFloat = 2
    var items : Array<Item> = Array()

    // MARK: - Methods

    func initView() {
        addNavigationBar()
        
        CollactionView.dataSource = self
        CollactionView.delegate = self
        
        self.CollactionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
                
        if let flowLayout = CollactionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize: CGRect = UIScreen.main.bounds
            let cellWidth = screenSize.width / numberOfColumns - 15
            flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        }
        
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))
        items.append(Item(title: "iMtRo", image: "image"))

       
    }
    func addNavigationBar(){

        let scroll = UIImage(systemName: "doc.plaintext")
        navigationItem.rightBarButtonItem =
        UIBarButtonItem(image: scroll, style: .plain,target: self, action: #selector(scrollTapped))
        
        title = "Collaactions View"
    }
    func callScrollController(){
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - Actions
    
    @objc func scrollTapped(){
        callScrollController()
    }
    
    
    // MARK: - Collactions View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ItemCollectionViewCell
        
        cell.PostIMage.image = UIImage(named: item.image!)
        cell.TitleImage.text = item.title
        
        return cell
    }
    
}
