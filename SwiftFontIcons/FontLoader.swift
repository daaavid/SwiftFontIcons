//
//  FontLoader.swift
//  fattpay
//
//  Created by David Johnson on 8/2/17.
//  Copyright © 2017 Fattmerchant. All rights reserved.
//

import UIKit
import CoreText

public class FontLoader {
  static func loadFont(_ name: String, withExtension ext: String) {
    let bundle = Bundle(for: FontLoader.self)
    let url = bundle.url(forResource: name, withExtension: ext)!
    let data = try! Data(contentsOf: url)
    
    let provider = CGDataProvider(data: data as CFData)
    let font = CGFont(provider!)
    
    var error: Unmanaged<CFError>?
    if !CTFontManagerRegisterGraphicsFont(font, &error) {
      let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
      let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
      NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
    }
  }
}
