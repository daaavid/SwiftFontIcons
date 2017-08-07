//
//  IconProtocol.swift
//  fattpay
//
//  Created by David Johnson on 8/2/17.
//  Copyright © 2017 Fattmerchant. All rights reserved.
//

import UIKit

public extension UIFont {
  public static func zmdi(size: CGFloat) -> UIFont {
    return ZMDI.font(size: size)
  }
  
  public static func fa(size: CGFloat) -> UIFont {
    return FontAwesome.font(size: size)
  }
}

public extension String {
  public var zmdi: ZMDI { return ZMDI(self) }
  public var fa: FontAwesome { return FontAwesome(self) }
}

public protocol IconProtocol {
  static var name: String { get }
  static var `extension`: String { get }
  var icon: String? { get }
  
  static func font(size: CGFloat) -> UIFont
  static func fontAttribute(size: CGFloat) -> [String: Any]
  
  func image(color: UIColor, size: CGFloat, backgroundColor: UIColor) -> UIImage?
  func image(color: UIColor, size: CGSize, backgroundColor: UIColor) -> UIImage?
}

extension IconProtocol {
  public static var `extension`: String { return "ttf" }
  
  public static func fontAttribute(size: CGFloat) -> [String: Any] {
    return [NSFontAttributeName: Self.font(size: size)]
  }
  
  public static func font(size: CGFloat) -> UIFont {
    if UIFont.fontNames(forFamilyName: name).count == 0 {
      FontLoader.loadFont(name, withExtension: `extension`)
    }
    
    return UIFont(name: name, size: size)!
  }
  
  public func image(color: UIColor, size: CGFloat, backgroundColor: UIColor = UIColor.clear) -> UIImage? {
    let size = CGSize(width: size, height: size)
    return image(color: color, size: size, backgroundColor: backgroundColor)
  }
  
  public func image(color: UIColor, size: CGSize, backgroundColor: UIColor = UIColor.clear) -> UIImage? {
    guard let icon = icon else { return nil }
    
    let paragraph = NSMutableParagraphStyle()
    paragraph.alignment = NSTextAlignment.center
    
    // Taken from FontAwesome.io's Fixed Width Icon CSS
    let fontAspectRatio: CGFloat = 1.28571429
    
    let fontSize = min(size.width / fontAspectRatio, size.height)
    let attributedString = NSAttributedString(
      string: icon, attributes: [
        NSFontAttributeName: Self.font(size: fontSize),
        NSForegroundColorAttributeName: color, 
        NSBackgroundColorAttributeName: backgroundColor, 
        NSParagraphStyleAttributeName: paragraph
      ]
    )
    UIGraphicsBeginImageContextWithOptions(size, false , 0.0)
    attributedString.draw(in: CGRect(x: 0, y: (size.height - fontSize) / 2, width: size.width, height: fontSize))
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
}
