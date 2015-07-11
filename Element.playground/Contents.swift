//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import Element


var str = "1"

//class MockBalloon : Balloon {
//    override func sizeThatFits(size: CGSize) -> CGSize {
//
//        var bounds : CGRect = CGRectZero
//        let childSize = CGSizeMake(size.width - self.padding.width, size.height - self.padding.height)
//
//        var width : CGFloat = 0
//        var height : CGFloat = 0
//        for (_, element) in elements.enumerate() {
//            bounds = CGRectMake(
//                self.padding.left,
//                self.padding.top,
//                childSize.width,
//                childSize.height)
//            let elementFrame = element.frameThatFits(bounds)
//            width = max(width, CGRectGetWidth(elementFrame))
//            height = max(width, CGRectGetHeight(elementFrame))
//        }
//
//        var newSize : CGSize = CGSizeZero
//        if width * height > childSize.width * childSize.height {
//            newSize = self.intrinsicContentSize()
//        } else {
//            newSize = CGSizeMake(min(width, childSize.width), min(childSize.height, height))
//        }
//
//        return self.padding.applyToSize(newSize)
//    }
//}

//let balloon = MockBalloon(volume: 9)

//balloon.bounds = CGRectMake(0, 0, 9, 1)

//balloon.addElement(Water(liter: 9))
//balloon.padding = Edge(top: 1, left: 2, bottom:1, right: 2) // 4 x 2
//
//balloon.sizeThatFits(CGSizeMake(20, 20))


// CGSizeMake(13, 3), "")

/*
var str = "Hello, playground"


let view : UIView = UIView(frame: CGRectMake(30, 30, 0, 300))

let label = UILabel(frame: CGRectZero)
label.text = str
label.preferredMaxLayoutWidth = 100
label.numberOfLines = 0


view.sizeThatFits(CGSizeMake(100, 100))

view.sizeThatFits(CGSizeMake(200, 400))

label.sizeThatFits(CGSizeMake(0, 0))
label.sizeThatFits(CGSizeMake(50, 0))
label.sizeThatFits(CGSizeMake(0, 50))
label.sizeThatFits(CGSizeMake(50, 50))

//view.addSubview(label)
//label.autoresizingMask = [UIViewAutoresizing.FlexibleHeight, UIViewAutoresizing.FlexibleWidth]
label.bounds = view.bounds
label.intrinsicContentSize()

view.sizeThatFits(CGSizeMake(100, 100))
view.intrinsicContentSize()


view.sizeToFit()
view.bounds

//let stackView = UIStackView()
//stackView.addArrangedSubview(view)
//stackView.bounds
//stackView.distribution = UIStackViewDistribution.EqualCentering
//stackView.alignment = UIStackViewAlignment.Center
//
//stackView
//
//XCPShowView("stack", view: stackVie
*/
