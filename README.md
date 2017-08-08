# SwiftFontIcons
Elegantly use ZMDI (Material Design Iconic Font) and FontAwesome icons in Swift for iOS.

[![CI Status](http://img.shields.io/travis/daaavid/SwiftFontIcons.svg?style=flat)](https://travis-ci.org/daaavid/SwiftFontIcons)
[![Version](https://img.shields.io/cocoapods/v/SwiftFontIcons.svg?style=flat)](http://cocoapods.org/pods/SwiftFontIcons)
[![License](https://img.shields.io/cocoapods/l/SwiftFontIcons.svg?style=flat)](http://cocoapods.org/pods/SwiftFontIcons)
[![Platform](https://img.shields.io/cocoapods/p/SwiftFontIcons.svg?style=flat)](http://cocoapods.org/pods/SwiftFontIcons)

## Usage
Use is easy as 🍰; type the icon code you want to use followed by `.zmdi` or `.fa` and then `.icon` or `.image`. This will return an optional String and UIImage, respectively. If you're using `.icon`, remember to set the font for the label / button / whatever beforehand.

```
label.font = .zmdi(size: 20)
label.text = "zmdi-remote-control".zmdi.icon

label.font = .fa(size: 20)
label.text = "fa-user".fa.icon
```

```
imageView.image = "zmdi-remote-control".zmdi.image(color: .white, size: imageView.frame.size)
imageView.image = "fa-user".fa.image(color: .white, size: imageView.frame.size)
```

Prefacing the icon code with `fa` or `zmdi` is unnecessary; you can drop it off if you want.

```
label.text = "address-book".fa.icon
label.text = "satellite".zmdi.icon
```

Check out this [Example Code](https://github.com/daaavid/SwiftFontIcons/blob/master/Example/SwiftFontIcons/ViewController.swift) for more usage examples.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SwiftFontIcons is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftFontIcons'
```

If you get some sort of spec error, try `pod repo update` or:

```ruby
pod 'SwiftFontIcons', :git => 'https://github.com/daaavid/SwiftFontIcons.git', :branch => 'master'
```

## Author

daaavid, david.j.c.johnson@gmail.com

## License

SwiftFontIcons is available under the MIT license. See the LICENSE file for more info.
