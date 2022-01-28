//import UIKit    //    BaseCell.swift
//
//class BaseCell: UICollectionViewCell {
//
//    static let reuseIdentifier = "CustomCell"
//
//    var xyCoordinate = [-1,-1] /// = [column, row]
//
//    var roundUpAmountLabel = UILabel()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        addLabelsWithConstraints()
//
//        self.layer.shadowColor = UIColor.lightGray.cgColor
//        self.layer.shadowOpacity = 0.15
//        self.layer.shadowRadius = 5
//        self.layer.shadowOffset = .zero
//        self.layer.shouldRasterize = true
//    }
//
//    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
//
//    func addLabelsWithConstraints() {
//
//        self.addSubview(roundUpAmountLabel)
//
//        addConstraint(NSLayoutConstraint(item: roundUpAmountLabel, attribute: .centerY, relatedBy: .equal,
//                                         toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
//
//        addConstraint(NSLayoutConstraint(item: roundUpAmountLabel, attribute: .centerX, relatedBy: .equal,
//                                         toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
//
//        roundUpAmountLabel.translatesAutoresizingMaskIntoConstraints = false
//    }
//}
//
