//import UIKit    //    MenuViewController.swift
//
//class MenuViewController : UIViewController {
//
//    lazy var descriptionView = MenuView()
//    var justPinched = false
//    var assetsViewController = AssetsCollectionViewController(layout: CustomFlowLayout(cellWidth: 0, cellHeight: 0, hSpace: 0, vSpace: 0))
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        viewFrameWidth = view.frame.width;  viewFrameHeight = view.frame.height
//
//        descriptionView.frame = CGRect(x: 0, y: 0, width: viewFrameWidth, height: viewFrameHeight)
//        view.addSubview(descriptionView)
//        setNavBarTitle("Menu", color: .black)
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [weak self] in
//            self?.setupAssetsCollectionView()
//        }
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        let pinchToQuit = UIPinchGestureRecognizer(target: self, action: #selector(pinched))
//        self.view.addGestureRecognizer(pinchToQuit)
//        justPinched = false
//    }
//
//    func setupAssetsCollectionView() {
//        let spacing = CGFloat(1.5)
//
//        let collectionViewWidth = viewFrameWidth * 0.5
//        let y = descriptionView.descriptionLabel.frame.maxY + 15
//        let visibleRoundUpsHeight = viewFrameWidth * 0.15
//
//        let layout = CustomFlowLayout(cellWidth: collectionViewWidth - 4, cellHeight: visibleRoundUpsHeight / 2.5  - spacing * 3,
//                                      hSpace: 0, vSpace: 0)
//        layout.sectionInset = UIEdgeInsets(top: spacing, left: 0, bottom: spacing, right: 0)
//        assetsViewController = AssetsCollectionViewController(layout: layout)
//
//        let x = (viewFrameWidth - collectionViewWidth) / 2
//        assetsViewController.view.frame = CGRect(x: x, y: y, width: collectionViewWidth, height: visibleRoundUpsHeight)
//        self.view.addSubview(assetsViewController.view)
//        assetsViewController.collectionView.reloadData()
//    }
//
//    @objc func pinched() {
//        if !justPinched { justPinched = true
//            gotoView(vc: dashboardVC)
//        }
//    }
//}

