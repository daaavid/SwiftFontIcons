//
//  ViewController.swift
//  SwiftFontIcons
//
//  Created by daaavid on 08/07/2017.
//  Copyright (c) 2017 daaavid. All rights reserved.
//

import UIKit
import SwiftFontIcons

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    let button = UIBarButtonItem(title: "arrow-left".fa.icon!, style: .plain, target: nil, action: nil)
    var attributes = UIFont.fa(size: 18).attribute
    attributes[convertFromNSAttributedStringKey(NSAttributedString.Key.foregroundColor)] = UIColor.red
    button.setTitleTextAttributes(convertToOptionalNSAttributedStringKeyDictionary(attributes), for: .normal)
    navigationItem.leftBarButtonItem = button
    
    
    
    let imageView = UIImageView()
    view.addSubview(imageView)
    
    imageView.image = "archive".zmdi.image(color: .gray, size: 100)
    imageView.frame.size = imageView.image!.size
    imageView.center = view.center.offsetBy(y: -imageView.image!.size.height)
    
    
    
    let zmdiIconCodes = ["account", "money-box", "twitter"]
    let colors: [UIColor] = [.black, .green, .cyan]
    
    for (index, codeAndColor) in zip(zmdiIconCodes, colors).enumerated() {
      let label = UILabel()
      view.addSubview(label)
      
      label.textAlignment = .center
      label.font = .zmdi(size: 40)
      
      let (code, color) = codeAndColor
      label.text = code.zmdi.icon
      label.textColor = color
    
      label.frame.size = label.intrinsicContentSize
      label.center = view.center.offsetBy(y: label.frame.height * CGFloat(index))
    }
  }
}

extension CGPoint {
  func offsetBy(x: CGFloat = 0, y: CGFloat = 0) -> CGPoint {
    return CGPoint(x: self.x + x, y: self.y + y)
  }
}


// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
	return input.rawValue
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}
