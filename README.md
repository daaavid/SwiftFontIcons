# SwiftyFontIcons
ZMDI and FontAwesome icons for use in ios.

## Installation
Drag the source files into your project.

## Usage
Use is easy as pie; type the icon code you want to use followed by `.zmdi` or `.fa` and then `.icon` or `.image`. If you're using `.icon`, remember to set the font for the label / button / whatever beforehand.

```
label.font = .zmdi(size: 20)
label.text = "remote-control".zmdi.icon

label.font = .fa(size: 20)
label.text = "fa-user".fa.icon
```

```
imageView.image = "remote-control".zmdi.image(color: .white, size: imageView.frame.size)
imageView.image = "fa-user".fa.image(color: .white, size: imageView.frame.size)
```

** Credit to [thii](https://github.com/thii/FontAwesome.swift) for the FontLoader and Image code. **
