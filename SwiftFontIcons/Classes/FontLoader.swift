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
    let url: URL = bundle.paths(forResourcesOfType: ext, inDirectory: nil).compactMap { path -> URL? in
      if let filename = NSURL(fileURLWithPath: path).lastPathComponent, filename.lowercased().contains(name.lowercased()) {
        return NSURL(fileURLWithPath: path) as URL
      }
      return nil
    }.first!

    let data = try! Data(contentsOf: url)
    let provider = CGDataProvider(data: data as CFData)
    let font = CGFont(provider!)
    var error: Unmanaged<CFError>?
    
    if let font = font, !CTFontManagerRegisterGraphicsFont(font, &error) {
      let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
      let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
      NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
    }
  }
}
