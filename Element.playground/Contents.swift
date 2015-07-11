//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

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
label.frame = view.bounds
label.intrinsicContentSize()

view.sizeThatFits(CGSizeMake(100, 100))
view.intrinsicContentSize()


view.sizeToFit()
view.frame

//let stackView = UIStackView()
//stackView.addArrangedSubview(view)
//stackView.frame
//stackView.distribution = UIStackViewDistribution.EqualCentering
//stackView.alignment = UIStackViewAlignment.Center
//
//stackView
//
//XCPShowView("stack", view: stackView)
