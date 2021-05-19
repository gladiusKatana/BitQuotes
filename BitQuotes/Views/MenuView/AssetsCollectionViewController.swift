import UIKit    //    AssetsCollectionViewController.swift

class AssetsCollectionViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    init(layout: CustomFlowLayout) {
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.isScrollEnabled = true
        self.collectionView.backgroundColor = .orange
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return assetPairStrings.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let customLayout = collectionViewLayout as? CustomFlowLayout else {
            print("failed to downcast custom collection view layout in instance method  collectionView(_:layout:sizeForItemAt:)")
            return CGSize(width: 0, height: 0)
        }
        
        return CGSize(width: customLayout.cellWidth, height: customLayout.cellHeight)
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        collectionView.register(BaseCell.self, forCellWithReuseIdentifier: BaseCell.reuseIdentifier)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BaseCell.reuseIdentifier, for: indexPath) as! BaseCell
        cell.xyCoordinate = [indexPath.section, indexPath.row]
        
        cell.backgroundColor = .white
        cell.roundUpAmountLabel.setMixedFontAssetDescription(cellNumber: indexPath.section, color: .darkGray)
        return cell
    }
}

