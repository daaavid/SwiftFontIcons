#
# Be sure to run `pod lib lint SwiftFontIcons.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftFontIcons'
  s.version          = '0.0.1'
  s.summary          = 'Elegantly use ZMDI (Material Design Iconic Font) and FontAwesome icons in Swift for iOS.'

  s.homepage         = 'https://github.com/daaavid/SwiftFontIcons'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'daaavid' => 'david@bronze5.net' }
  s.source           = { :git => 'https://github.com/daaavid/SwiftFontIcons.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftFontIcons/Classes/**/*.{swift}'
  s.resources = 'SwiftFontIcons/Fonts/**/*.{ttf}'
  s.frameworks = 'UIKit'
end
