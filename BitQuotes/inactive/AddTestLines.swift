//import UIKit    //    AddTestLines.swift
//
//extension DashboardTextView {
//
//    func addTestLines() {
//
//        let wid = CGFloat(100); let hei = CGFloat(1)
//        let x = (viewFrameWidth - wid) / 2
//
//
//        let topYRect = CGRect(x: x,
//                              y: navBarHeight + statusBarHeight,
//                              width: wid,
//                              height: hei)
//        let topYLine = UIView(frame: topYRect);         topYLine.backgroundColor = .black
//        self.addSubview(topYLine)
//
//
//        let middleYRect = CGRect(x: x,
//                                 y: (viewFrameHeight - hei) / 2,
//                                 width: wid,
//                                 height: hei)
//        let middleYLine = UIView(frame: middleYRect);   middleYLine.backgroundColor = .black
//        self.addSubview(middleYLine)
//
//
//        let bottomYRect = CGRect(x: x,
//                                 y: viewFrameHeight - (navBarHeight + statusBarHeight),
//                                 width: wid,
//                                 height: hei)
//        let bottomYLine = UIView(frame: bottomYRect);   bottomYLine.backgroundColor = .black
//        self.addSubview(bottomYLine)
//    }
//}
//
