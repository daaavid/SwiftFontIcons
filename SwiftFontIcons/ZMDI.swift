//
//  ZMDI.swift
//  fattpay
//
//  Created by David Johnson on 8/2/17.
//  Copyright © 2017 Fattmerchant. All rights reserved.
//

import UIKit

public class ZMDI: IconProtocol {
  public static let name = "Material-Design-Iconic-Font"
  public static let `extension` = "ttf"

  public var icon: String? { 
    return ZMDI.icons[code] 
  }
  
  fileprivate var code: String
  
  fileprivate static let icons: [String: String] = [
    "3d-rotation" : "\u{f101}",
    "airplane-off" : "\u{f102}",
    "airplane" : "\u{f103}",
    "album" : "\u{f104}",
    "archive" : "\u{f105}",
    "assignment-account" : "\u{f106}",
    "assignment-alert" : "\u{f107}",
    "assignment-check" : "\u{f108}",
    "assignment-o" : "\u{f109}",
    "assignment-return" : "\u{f10a}",
    "assignment-returned" : "\u{f10b}",
    "assignment" : "\u{f10c}",
    "attachment-alt" : "\u{f10d}",
    "attachment" : "\u{f10e}",
    "audio" : "\u{f10f}",
    "badge-check" : "\u{f110}",
    "balance-wallet" : "\u{f111}",
    "balance" : "\u{f112}",
    "battery-alert" : "\u{f113}",
    "battery-flash" : "\u{f114}",
    "battery-unknown" : "\u{f115}",
    "battery" : "\u{f116}",
    "bike" : "\u{f117}",
    "block-alt" : "\u{f118}",
    "block" : "\u{f119}",
    "boat" : "\u{f11a}",
    "book-image" : "\u{f11b}",
    "book" : "\u{f11c}",
    "bookmark-outline" : "\u{f11d}",
    "bookmark" : "\u{f11e}",
    "brush" : "\u{f11f}",
    "bug" : "\u{f120}",
    "bus" : "\u{f121}",
    "cake" : "\u{f122}",
    "car-taxi" : "\u{f123}",
    "car-wash" : "\u{f124}",
    "car" : "\u{f125}",
    "card-giftcard" : "\u{f126}",
    "card-membership" : "\u{f127}",
    "card-travel" : "\u{f128}",
    "card" : "\u{f129}",
    "case-check" : "\u{f12a}",
    "case-download" : "\u{f12b}",
    "case-play" : "\u{f12c}",
    "case" : "\u{f12d}",
    "cast-connected" : "\u{f12e}",
    "cast" : "\u{f12f}",
    "chart-donut" : "\u{f130}",
    "chart" : "\u{f131}",
    "city-alt" : "\u{f132}",
    "city" : "\u{f133}",
    "close-circle-o" : "\u{f134}",
    "close-circle" : "\u{f135}",
    "close" : "\u{f136}",
    "cocktail" : "\u{f137}",
    "code-setting" : "\u{f138}",
    "code-smartphone" : "\u{f139}",
    "code" : "\u{f13a}",
    "coffee" : "\u{f13b}",
    "collection-bookmark" : "\u{f13c}",
    "collection-case-play" : "\u{f13d}",
    "collection-folder-image" : "\u{f13e}",
    "collection-image-o" : "\u{f13f}",
    "collection-image" : "\u{f140}",
    "collection-item-1" : "\u{f141}",
    "collection-item-2" : "\u{f142}",
    "collection-item-3" : "\u{f143}",
    "collection-item-4" : "\u{f144}",
    "collection-item-5" : "\u{f145}",
    "collection-item-6" : "\u{f146}",
    "collection-item-7" : "\u{f147}",
    "collection-item-8" : "\u{f148}",
    "collection-item-9-plus" : "\u{f149}",
    "collection-item-9" : "\u{f14a}",
    "collection-item" : "\u{f14b}",
    "collection-music" : "\u{f14c}",
    "collection-pdf" : "\u{f14d}",
    "collection-plus" : "\u{f14e}",
    "collection-speaker" : "\u{f14f}",
    "collection-text" : "\u{f150}",
    "collection-video" : "\u{f151}",
    "compass" : "\u{f152}",
    "cutlery" : "\u{f153}",
    "delete" : "\u{f154}",
    "dialpad" : "\u{f155}",
    "dns" : "\u{f156}",
    "drink" : "\u{f157}",
    "edit" : "\u{f158}",
    "email-open" : "\u{f159}",
    "email" : "\u{f15a}",
    "eye-off" : "\u{f15b}",
    "eye" : "\u{f15c}",
    "eyedropper" : "\u{f15d}",
    "favorite-outline" : "\u{f15e}",
    "favorite" : "\u{f15f}",
    "filter-list" : "\u{f160}",
    "fire" : "\u{f161}",
    "flag" : "\u{f162}",
    "flare" : "\u{f163}",
    "flash-auto" : "\u{f164}",
    "flash-off" : "\u{f165}",
    "flash" : "\u{f166}",
    "flip" : "\u{f167}",
    "flower-alt" : "\u{f168}",
    "flower" : "\u{f169}",
    "font" : "\u{f16a}",
    "fullscreen-alt" : "\u{f16b}",
    "fullscreen-exit" : "\u{f16c}",
    "fullscreen" : "\u{f16d}",
    "functions" : "\u{f16e}",
    "gas-station" : "\u{f16f}",
    "gesture" : "\u{f170}",
    "globe-alt" : "\u{f171}",
    "globe-lock" : "\u{f172}",
    "globe" : "\u{f173}",
    "graduation-cap" : "\u{f174}",
    "home" : "\u{f175}",
    "hospital-alt" : "\u{f176}",
    "hospital" : "\u{f177}",
    "hotel" : "\u{f178}",
    "hourglass-alt" : "\u{f179}",
    "hourglass-outline" : "\u{f17a}",
    "hourglass" : "\u{f17b}",
    "http" : "\u{f17c}",
    "image-alt" : "\u{f17d}",
    "image-o" : "\u{f17e}",
    "image" : "\u{f17f}",
    "inbox" : "\u{f180}",
    "invert-colors-off" : "\u{f181}",
    "invert-colors" : "\u{f182}",
    "key" : "\u{f183}",
    "label-alt-outline" : "\u{f184}",
    "label-alt" : "\u{f185}",
    "label-heart" : "\u{f186}",
    "label" : "\u{f187}",
    "labels" : "\u{f188}",
    "lamp" : "\u{f189}",
    "landscape" : "\u{f18a}",
    "layers-off" : "\u{f18b}",
    "layers" : "\u{f18c}",
    "library" : "\u{f18d}",
    "link" : "\u{f18e}",
    "lock-open" : "\u{f18f}",
    "lock-outline" : "\u{f190}",
    "lock" : "\u{f191}",
    "mail-reply-all" : "\u{f192}",
    "mail-reply" : "\u{f193}",
    "mail-send" : "\u{f194}",
    "mall" : "\u{f195}",
    "map" : "\u{f196}",
    "menu" : "\u{f197}",
    "money-box" : "\u{f198}",
    "money-off" : "\u{f199}",
    "money" : "\u{f19a}",
    "more-vert" : "\u{f19b}",
    "more" : "\u{f19c}",
    "movie-alt" : "\u{f19d}",
    "movie" : "\u{f19e}",
    "nature-people" : "\u{f19f}",
    "nature" : "\u{f1a0}",
    "navigation" : "\u{f1a1}",
    "open-in-browser" : "\u{f1a2}",
    "open-in-new" : "\u{f1a3}",
    "palette" : "\u{f1a4}",
    "parking" : "\u{f1a5}",
    "pin-account" : "\u{f1a6}",
    "pin-assistant" : "\u{f1a7}",
    "pin-drop" : "\u{f1a8}",
    "pin-help" : "\u{f1a9}",
    "pin-off" : "\u{f1aa}",
    "pin" : "\u{f1ab}",
    "pizza" : "\u{f1ac}",
    "plaster" : "\u{f1ad}",
    "power-setting" : "\u{f1ae}",
    "power" : "\u{f1af}",
    "print" : "\u{f1b0}",
    "puzzle-piece" : "\u{f1b1}",
    "quote" : "\u{f1b2}",
    "railway" : "\u{f1b3}",
    "receipt" : "\u{f1b4}",
    "refresh-alt" : "\u{f1b5}",
    "refresh-sync-alert" : "\u{f1b6}",
    "refresh-sync-off" : "\u{f1b7}",
    "refresh-sync" : "\u{f1b8}",
    "refresh" : "\u{f1b9}",
    "roller" : "\u{f1ba}",
    "ruler" : "\u{f1bb}",
    "scissors" : "\u{f1bc}",
    "screen-rotation-lock" : "\u{f1bd}",
    "screen-rotation" : "\u{f1be}",
    "search-for" : "\u{f1bf}",
    "search-in-file" : "\u{f1c0}",
    "search-in-page" : "\u{f1c1}",
    "search-replace" : "\u{f1c2}",
    "search" : "\u{f1c3}",
    "seat" : "\u{f1c4}",
    "settings-square" : "\u{f1c5}",
    "settings" : "\u{f1c6}",
    "shield-check" : "\u{f1c7}",
    "shield-security" : "\u{f1c8}",
    "shopping-basket" : "\u{f1c9}",
    "shopping-cart-plus" : "\u{f1ca}",
    "shopping-cart" : "\u{f1cb}",
    "sign-in" : "\u{f1cc}",
    "sort-amount-asc" : "\u{f1cd}",
    "sort-amount-desc" : "\u{f1ce}",
    "sort-asc" : "\u{f1cf}",
    "sort-desc" : "\u{f1d0}",
    "spellcheck" : "\u{f1d1}",
    "storage" : "\u{f1d2}",
    "store-24" : "\u{f1d3}",
    "store" : "\u{f1d4}",
    "subway" : "\u{f1d5}",
    "sun" : "\u{f1d6}",
    "tab-unselected" : "\u{f1d7}",
    "tab" : "\u{f1d8}",
    "tag-close" : "\u{f1d9}",
    "tag-more" : "\u{f1da}",
    "tag" : "\u{f1db}",
    "thumb-down" : "\u{f1dc}",
    "thumb-up-down" : "\u{f1dd}",
    "thumb-up" : "\u{f1de}",
    "ticket-star" : "\u{f1df}",
    "toll" : "\u{f1e0}",
    "toys" : "\u{f1e1}",
    "traffic" : "\u{f1e2}",
    "translate" : "\u{f1e3}",
    "triangle-down" : "\u{f1e4}",
    "triangle-up" : "\u{f1e5}",
    "truck" : "\u{f1e6}",
    "turning-sign" : "\u{f1e7}",
    "wallpaper" : "\u{f1e8}",
    "washing-machine" : "\u{f1e9}",
    "window-maximize" : "\u{f1ea}",
    "window-minimize" : "\u{f1eb}",
    "window-restore" : "\u{f1ec}",
    "wrench" : "\u{f1ed}",
    "zoom-in" : "\u{f1ee}",
    "zoom-out" : "\u{f1ef}",
    "alert-circle-o" : "\u{f1f0}",
    "alert-circle" : "\u{f1f1}",
    "alert-octagon" : "\u{f1f2}",
    "alert-polygon" : "\u{f1f3}",
    "alert-triangle" : "\u{f1f4}",
    "help-outline" : "\u{f1f5}",
    "help" : "\u{f1f6}",
    "info-outline" : "\u{f1f7}",
    "info" : "\u{f1f8}",
    "notifications-active" : "\u{f1f9}",
    "notifications-add" : "\u{f1fa}",
    "notifications-none" : "\u{f1fb}",
    "notifications-off" : "\u{f1fc}",
    "notifications-paused" : "\u{f1fd}",
    "notifications" : "\u{f1fe}",
    "account-add" : "\u{f1ff}",
    "account-box-mail" : "\u{f200}",
    "account-box-o" : "\u{f201}",
    "account-box-phone" : "\u{f202}",
    "account-box" : "\u{f203}",
    "account-calendar" : "\u{f204}",
    "account-circle" : "\u{f205}",
    "account-o" : "\u{f206}",
    "account" : "\u{f207}",
    "accounts-add" : "\u{f208}",
    "accounts-alt" : "\u{f209}",
    "accounts-list-alt" : "\u{f20a}",
    "accounts-list" : "\u{f20b}",
    "accounts-outline" : "\u{f20c}",
    "accounts" : "\u{f20d}",
    "face" : "\u{f20e}",
    "female" : "\u{f20f}",
    "male-alt" : "\u{f210}",
    "male-female" : "\u{f211}",
    "male" : "\u{f212}",
    "mood-bad" : "\u{f213}",
    "mood" : "\u{f214}",
    "run" : "\u{f215}",
    "walk" : "\u{f216}",
    "cloud-box" : "\u{f217}",
    "cloud-circle" : "\u{f218}",
    "cloud-done" : "\u{f219}",
    "cloud-download" : "\u{f21a}",
    "cloud-off" : "\u{f21b}",
    "cloud-outline-alt" : "\u{f21c}",
    "cloud-outline" : "\u{f21d}",
    "cloud-upload" : "\u{f21e}",
    "cloud" : "\u{f21f}",
    "download" : "\u{f220}",
    "file-plus" : "\u{f221}",
    "file-text" : "\u{f222}",
    "file" : "\u{f223}",
    "folder-outline" : "\u{f224}",
    "folder-person" : "\u{f225}",
    "folder-star-alt" : "\u{f226}",
    "folder-star" : "\u{f227}",
    "folder" : "\u{f228}",
    "gif" : "\u{f229}",
    "upload" : "\u{f22a}",
    "border-all" : "\u{f22b}",
    "border-bottom" : "\u{f22c}",
    "border-clear" : "\u{f22d}",
    "border-color" : "\u{f22e}",
    "border-horizontal" : "\u{f22f}",
    "border-inner" : "\u{f230}",
    "border-left" : "\u{f231}",
    "border-outer" : "\u{f232}",
    "border-right" : "\u{f233}",
    "border-style" : "\u{f234}",
    "border-top" : "\u{f235}",
    "border-vertical" : "\u{f236}",
    "copy" : "\u{f237}",
    "crop" : "\u{f238}",
    "format-align-center" : "\u{f239}",
    "format-align-justify" : "\u{f23a}",
    "format-align-left" : "\u{f23b}",
    "format-align-right" : "\u{f23c}",
    "format-bold" : "\u{f23d}",
    "format-clear-all" : "\u{f23e}",
    "format-clear" : "\u{f23f}",
    "format-color-fill" : "\u{f240}",
    "format-color-reset" : "\u{f241}",
    "format-color-text" : "\u{f242}",
    "format-indent-decrease" : "\u{f243}",
    "format-indent-increase" : "\u{f244}",
    "format-italic" : "\u{f245}",
    "format-line-spacing" : "\u{f246}",
    "format-list-bulleted" : "\u{f247}",
    "format-list-numbered" : "\u{f248}",
    "format-ltr" : "\u{f249}",
    "format-rtl" : "\u{f24a}",
    "format-size" : "\u{f24b}",
    "format-strikethrough-s" : "\u{f24c}",
    "format-strikethrough" : "\u{f24d}",
    "format-subject" : "\u{f24e}",
    "format-underlined" : "\u{f24f}",
    "format-valign-bottom" : "\u{f250}",
    "format-valign-center" : "\u{f251}",
    "format-valign-top" : "\u{f252}",
    "redo" : "\u{f253}",
    "select-all" : "\u{f254}",
    "space-bar" : "\u{f255}",
    "text-format" : "\u{f256}",
    "transform" : "\u{f257}",
    "undo" : "\u{f258}",
    "wrap-text" : "\u{f259}",
    "comment-alert" : "\u{f25a}",
    "comment-alt-text" : "\u{f25b}",
    "comment-alt" : "\u{f25c}",
    "comment-edit" : "\u{f25d}",
    "comment-image" : "\u{f25e}",
    "comment-list" : "\u{f25f}",
    "comment-more" : "\u{f260}",
    "comment-outline" : "\u{f261}",
    "comment-text-alt" : "\u{f262}",
    "comment-text" : "\u{f263}",
    "comment-video" : "\u{f264}",
    "comment" : "\u{f265}",
    "comments" : "\u{f266}",
    "check-all" : "\u{f267}",
    "check-circle-u" : "\u{f268}",
    "check-circle" : "\u{f269}",
    "check-square" : "\u{f26a}",
    "check" : "\u{f26b}",
    "circle-o" : "\u{f26c}",
    "circle" : "\u{f26d}",
    "dot-circle-alt" : "\u{f26e}",
    "dot-circle" : "\u{f26f}",
    "minus-circle-outline" : "\u{f270}",
    "minus-circle" : "\u{f271}",
    "minus-square" : "\u{f272}",
    "minus" : "\u{f273}",
    "plus-circle-o-duplicate" : "\u{f274}",
    "plus-circle-o" : "\u{f275}",
    "plus-circle" : "\u{f276}",
    "plus-square" : "\u{f277}",
    "plus" : "\u{f278}",
    "square-o" : "\u{f279}",
    "star-circle" : "\u{f27a}",
    "star-half" : "\u{f27b}",
    "star-outline" : "\u{f27c}",
    "star" : "\u{f27d}",
    "bluetooth-connected" : "\u{f27e}",
    "bluetooth-off" : "\u{f27f}",
    "bluetooth-search" : "\u{f280}",
    "bluetooth-setting" : "\u{f281}",
    "bluetooth" : "\u{f282}",
    "camera-add" : "\u{f283}",
    "camera-alt" : "\u{f284}",
    "camera-bw" : "\u{f285}",
    "camera-front" : "\u{f286}",
    "camera-mic" : "\u{f287}",
    "camera-party-mode" : "\u{f288}",
    "camera-rear" : "\u{f289}",
    "camera-roll" : "\u{f28a}",
    "camera-switch" : "\u{f28b}",
    "camera" : "\u{f28c}",
    "card-alert" : "\u{f28d}",
    "card-off" : "\u{f28e}",
    "card-sd" : "\u{f28f}",
    "card-sim" : "\u{f290}",
    "desktop-mac" : "\u{f291}",
    "desktop-windows" : "\u{f292}",
    "device-hub" : "\u{f293}",
    "devices-off" : "\u{f294}",
    "devices" : "\u{f295}",
    "dock" : "\u{f296}",
    "floppy" : "\u{f297}",
    "gamepad" : "\u{f298}",
    "gps-dot" : "\u{f299}",
    "gps-off" : "\u{f29a}",
    "gps" : "\u{f29b}",
    "headset-mic" : "\u{f29c}",
    "headset" : "\u{f29d}",
    "input-antenna" : "\u{f29e}",
    "input-composite" : "\u{f29f}",
    "input-hdmi" : "\u{f2a0}",
    "input-power" : "\u{f2a1}",
    "input-svideo" : "\u{f2a2}",
    "keyboard-hide" : "\u{f2a3}",
    "keyboard" : "\u{f2a4}",
    "laptop-chromebook" : "\u{f2a5}",
    "laptop-mac" : "\u{f2a6}",
    "laptop" : "\u{f2a7}",
    "mic-off" : "\u{f2a8}",
    "mic-outline" : "\u{f2a9}",
    "mic-setting" : "\u{f2aa}",
    "mic" : "\u{f2ab}",
    "mouse" : "\u{f2ac}",
    "network-alert" : "\u{f2ad}",
    "network-locked" : "\u{f2ae}",
    "network-off" : "\u{f2af}",
    "network-outline" : "\u{f2b0}",
    "network-setting" : "\u{f2b1}",
    "network" : "\u{f2b2}",
    "phone-bluetooth" : "\u{f2b3}",
    "phone-end" : "\u{f2b4}",
    "phone-forwarded" : "\u{f2b5}",
    "phone-in-talk" : "\u{f2b6}",
    "phone-locked" : "\u{f2b7}",
    "phone-missed" : "\u{f2b8}",
    "phone-msg" : "\u{f2b9}",
    "phone-paused" : "\u{f2ba}",
    "phone-ring" : "\u{f2bb}",
    "phone-setting" : "\u{f2bc}",
    "phone-sip" : "\u{f2bd}",
    "phone" : "\u{f2be}",
    "portable-wifi-changes" : "\u{f2bf}",
    "portable-wifi-off" : "\u{f2c0}",
    "portable-wifi" : "\u{f2c1}",
    "radio" : "\u{f2c2}",
    "reader" : "\u{f2c3}",
    "remote-control-alt" : "\u{f2c4}",
    "remote-control" : "\u{f2c5}",
    "router" : "\u{f2c6}",
    "scanner" : "\u{f2c7}",
    "smartphone-android" : "\u{f2c8}",
    "smartphone-download" : "\u{f2c9}",
    "smartphone-erase" : "\u{f2ca}",
    "smartphone-info" : "\u{f2cb}",
    "smartphone-iphone" : "\u{f2cc}",
    "smartphone-landscape-lock" : "\u{f2cd}",
    "smartphone-landscape" : "\u{f2ce}",
    "smartphone-lock" : "\u{f2cf}",
    "smartphone-portrait-lock" : "\u{f2d0}",
    "smartphone-ring" : "\u{f2d1}",
    "smartphone-setting" : "\u{f2d2}",
    "smartphone-setup" : "\u{f2d3}",
    "smartphone" : "\u{f2d4}",
    "speaker" : "\u{f2d5}",
    "tablet-android" : "\u{f2d6}",
    "tablet-mac" : "\u{f2d7}",
    "tablet" : "\u{f2d8}",
    "tv-alt-play" : "\u{f2d9}",
    "tv-list" : "\u{f2da}",
    "tv-play" : "\u{f2db}",
    "tv" : "\u{f2dc}",
    "usb" : "\u{f2dd}",
    "videocam-off" : "\u{f2de}",
    "videocam-switch" : "\u{f2df}",
    "videocam" : "\u{f2e0}",
    "watch" : "\u{f2e1}",
    "wifi-alt-2" : "\u{f2e2}",
    "wifi-alt" : "\u{f2e3}",
    "wifi-info" : "\u{f2e4}",
    "wifi-lock" : "\u{f2e5}",
    "wifi-off" : "\u{f2e6}",
    "wifi-outline" : "\u{f2e7}",
    "wifi" : "\u{f2e8}",
    "arrow-left-bottom" : "\u{f2e9}",
    "arrow-left" : "\u{f2ea}",
    "arrow-merge" : "\u{f2eb}",
    "arrow-missed" : "\u{f2ec}",
    "arrow-right-top" : "\u{f2ed}",
    "arrow-right" : "\u{f2ee}",
    "arrow-split" : "\u{f2ef}",
    "arrows" : "\u{f2f0}",
    "caret-down-circle" : "\u{f2f1}",
    "caret-down" : "\u{f2f2}",
    "caret-left-circle" : "\u{f2f3}",
    "caret-left" : "\u{f2f4}",
    "caret-right-circle" : "\u{f2f5}",
    "caret-right" : "\u{f2f6}",
    "caret-up-circle" : "\u{f2f7}",
    "caret-up" : "\u{f2f8}",
    "chevron-down" : "\u{f2f9}",
    "chevron-left" : "\u{f2fa}",
    "chevron-right" : "\u{f2fb}",
    "chevron-up" : "\u{f2fc}",
    "forward" : "\u{f2fd}",
    "long-arrow-down" : "\u{f2fe}",
    "long-arrow-left" : "\u{f2ff}",
    "long-arrow-return" : "\u{f300}",
    "long-arrow-right" : "\u{f301}",
    "long-arrow-tab" : "\u{f302}",
    "long-arrow-up" : "\u{f303}",
    "rotate-ccw" : "\u{f304}",
    "rotate-cw" : "\u{f305}",
    "rotate-left" : "\u{f306}",
    "rotate-right" : "\u{f307}",
    "square-down" : "\u{f308}",
    "square-right" : "\u{f309}",
    "swap-alt" : "\u{f30a}",
    "swap-vertical-circle" : "\u{f30b}",
    "swap-vertical" : "\u{f30c}",
    "swap" : "\u{f30d}",
    "trending-down" : "\u{f30e}",
    "trending-flat" : "\u{f30f}",
    "trending-up" : "\u{f310}",
    "unfold-less" : "\u{f311}",
    "unfold-more" : "\u{f312}",
    "apps" : "\u{f313}",
    "grid-off" : "\u{f314}",
    "grid" : "\u{f315}",
    "view-agenda" : "\u{f316}",
    "view-array" : "\u{f317}",
    "view-carousel" : "\u{f318}",
    "view-column" : "\u{f319}",
    "view-comfy" : "\u{f31a}",
    "view-compact" : "\u{f31b}",
    "view-dashboard" : "\u{f31c}",
    "view-day" : "\u{f31d}",
    "view-headline" : "\u{f31e}",
    "view-list-alt" : "\u{f31f}",
    "view-list" : "\u{f320}",
    "view-module" : "\u{f321}",
    "view-quilt" : "\u{f322}",
    "view-stream" : "\u{f323}",
    "view-subtitles" : "\u{f324}",
    "view-toc" : "\u{f325}",
    "view-web" : "\u{f326}",
    "view-week" : "\u{f327}",
    "widgets" : "\u{f328}",
    "alarm-check" : "\u{f329}",
    "alarm-off" : "\u{f32a}",
    "alarm-plus" : "\u{f32b}",
    "alarm-snooze" : "\u{f32c}",
    "alarm" : "\u{f32d}",
    "calendar-alt" : "\u{f32e}",
    "calendar-check" : "\u{f32f}",
    "calendar-close" : "\u{f330}",
    "calendar-note" : "\u{f331}",
    "calendar" : "\u{f332}",
    "time-countdown" : "\u{f333}",
    "time-interval" : "\u{f334}",
    "time-restore-setting" : "\u{f335}",
    "time-restore" : "\u{f336}",
    "time" : "\u{f337}",
    "timer-off" : "\u{f338}",
    "timer" : "\u{f339}",
    "android-alt" : "\u{f33a}",
    "android" : "\u{f33b}",
    "apple" : "\u{f33c}",
    "behance" : "\u{f33d}",
    "codepen" : "\u{f33e}",
    "dribbble" : "\u{f33f}",
    "dropbox" : "\u{f340}",
    "evernote" : "\u{f341}",
    "facebook-box" : "\u{f342}",
    "facebook" : "\u{f343}",
    "github-box" : "\u{f344}",
    "github" : "\u{f345}",
    "google-drive" : "\u{f346}",
    "google-earth" : "\u{f347}",
    "google-glass" : "\u{f348}",
    "google-maps" : "\u{f349}",
    "google-pages" : "\u{f34a}",
    "google-play" : "\u{f34b}",
    "google-plus-box" : "\u{f34c}",
    "google-plus" : "\u{f34d}",
    "google" : "\u{f34e}",
    "instagram" : "\u{f34f}",
    "language-css3" : "\u{f350}",
    "language-html5" : "\u{f351}",
    "language-javascript" : "\u{f352}",
    "language-python-alt" : "\u{f353}",
    "language-python" : "\u{f354}",
    "lastfm" : "\u{f355}",
    "linkedin-box" : "\u{f356}",
    "paypal" : "\u{f357}",
    "pinterest-box" : "\u{f358}",
    "pocket" : "\u{f359}",
    "polymer" : "\u{f35a}",
    "share" : "\u{f35b}",
    "stack-overflow" : "\u{f35c}",
    "steam-square" : "\u{f35d}",
    "steam" : "\u{f35e}",
    "twitter-box" : "\u{f35f}",
    "twitter" : "\u{f360}",
    "vk" : "\u{f361}",
    "wikipedia" : "\u{f362}",
    "windows" : "\u{f363}",
    "aspect-ratio-alt" : "\u{f364}",
    "aspect-ratio" : "\u{f365}",
    "blur-circular" : "\u{f366}",
    "blur-linear" : "\u{f367}",
    "blur-off" : "\u{f368}",
    "blur" : "\u{f369}",
    "brightness-2" : "\u{f36a}",
    "brightness-3" : "\u{f36b}",
    "brightness-4" : "\u{f36c}",
    "brightness-5" : "\u{f36d}",
    "brightness-6" : "\u{f36e}",
    "brightness-7" : "\u{f36f}",
    "brightness-auto" : "\u{f370}",
    "brightness-setting" : "\u{f371}",
    "broken-image" : "\u{f372}",
    "center-focus-strong" : "\u{f373}",
    "center-focus-weak" : "\u{f374}",
    "compare" : "\u{f375}",
    "crop-16-9" : "\u{f376}",
    "crop-3-2" : "\u{f377}",
    "crop-5-4" : "\u{f378}",
    "crop-7-5" : "\u{f379}",
    "crop-din" : "\u{f37a}",
    "crop-free" : "\u{f37b}",
    "crop-landscape" : "\u{f37c}",
    "crop-portrait" : "\u{f37d}",
    "crop-square" : "\u{f37e}",
    "exposure-alt" : "\u{f37f}",
    "exposure" : "\u{f380}",
    "filter-b-and-w" : "\u{f381}",
    "filter-center-focus" : "\u{f382}",
    "filter-frames" : "\u{f383}",
    "filter-tilt-shift" : "\u{f384}",
    "gradient" : "\u{f385}",
    "grain" : "\u{f386}",
    "graphic-eq" : "\u{f387}",
    "hdr-off" : "\u{f388}",
    "hdr-strong" : "\u{f389}",
    "hdr-weak" : "\u{f38a}",
    "hdr" : "\u{f38b}",
    "iridescent" : "\u{f38c}",
    "leak-off" : "\u{f38d}",
    "leak" : "\u{f38e}",
    "looks" : "\u{f38f}",
    "loupe" : "\u{f390}",
    "panorama-horizontal" : "\u{f391}",
    "panorama-vertical" : "\u{f392}",
    "panorama-wide-angle" : "\u{f393}",
    "photo-size-select-large" : "\u{f394}",
    "photo-size-select-small" : "\u{f395}",
    "picture-in-picture" : "\u{f396}",
    "slideshow" : "\u{f397}",
    "texture" : "\u{f398}",
    "tonality" : "\u{f399}",
    "vignette" : "\u{f39a}",
    "wb-auto" : "\u{f39b}",
    "eject-alt" : "\u{f39c}",
    "eject" : "\u{f39d}",
    "equalizer" : "\u{f39e}",
    "fast-forward" : "\u{f39f}",
    "fast-rewind" : "\u{f3a0}",
    "forward-10" : "\u{f3a1}",
    "forward-30" : "\u{f3a2}",
    "forward-5" : "\u{f3a3}",
    "hearing" : "\u{f3a4}",
    "pause-circle-outline" : "\u{f3a5}",
    "pause-circle" : "\u{f3a6}",
    "pause" : "\u{f3a7}",
    "play-circle-outline" : "\u{f3a8}",
    "play-circle" : "\u{f3a9}",
    "play" : "\u{f3aa}",
    "playlist-audio" : "\u{f3ab}",
    "playlist-plus" : "\u{f3ac}",
    "repeat-one" : "\u{f3ad}",
    "repeat" : "\u{f3ae}",
    "replay-10" : "\u{f3af}",
    "replay-30" : "\u{f3b0}",
    "replay-5" : "\u{f3b1}",
    "replay" : "\u{f3b2}",
    "shuffle" : "\u{f3b3}",
    "skip-next" : "\u{f3b4}",
    "skip-previous" : "\u{f3b5}",
    "stop" : "\u{f3b6}",
    "surround-sound" : "\u{f3b7}",
    "tune" : "\u{f3b8}",
    "volume-down" : "\u{f3b9}",
    "volume-mute" : "\u{f3ba}",
    "volume-off" : "\u{f3bb}",
    "volume-up" : "\u{f3bc}",
    "n-1-square" : "\u{f3bd}",
    "n-2-square" : "\u{f3be}",
    "n-3-square" : "\u{f3bf}",
    "n-4-square" : "\u{f3c0}",
    "n-5-square" : "\u{f3c1}",
    "n-6-square" : "\u{f3c2}",
    "neg-1" : "\u{f3c3}",
    "neg-2" : "\u{f3c4}",
    "plus-1" : "\u{f3c5}",
    "plus-2" : "\u{f3c6}",
    "sec-10" : "\u{f3c7}",
    "sec-3" : "\u{f3c8}",
    "zero" : "\u{f3c9}",
    "airline-seat-flat-angled" : "\u{f3ca}",
    "airline-seat-flat" : "\u{f3cb}",
    "airline-seat-individual-suite" : "\u{f3cc}",
    "airline-seat-legroom-extra" : "\u{f3cd}",
    "airline-seat-legroom-normal" : "\u{f3ce}",
    "airline-seat-legroom-reduced" : "\u{f3cf}",
    "airline-seat-recline-extra" : "\u{f3d0}",
    "airline-seat-recline-normal" : "\u{f3d1}",
    "airplay" : "\u{f3d2}",
    "closed-caption" : "\u{f3d3}",
    "confirmation-number" : "\u{f3d4}",
    "developer-board" : "\u{f3d5}",
    "disc-full" : "\u{f3d6}",
    "explicit" : "\u{f3d7}",
    "flight-land" : "\u{f3d8}",
    "flight-takeoff" : "\u{f3d9}",
    "flip-to-back" : "\u{f3da}",
    "flip-to-front" : "\u{f3db}",
    "group-work" : "\u{f3dc}",
    "hd" : "\u{f3dd}",
    "hq" : "\u{f3de}",
    "markunread-mailbox" : "\u{f3df}",
    "memory" : "\u{f3e0}",
    "nfc" : "\u{f3e1}",
    "play-for-work" : "\u{f3e2}",
    "power-input" : "\u{f3e3}",
    "present-to-all" : "\u{f3e4}",
    "satellite" : "\u{f3e5}",
    "tap-and-play" : "\u{f3e6}",
    "vibration" : "\u{f3e7}",
    "voicemail" : "\u{f3e8}",
    ]
  
  public init(_ code: String) {
    self.code = code.replacingOccurrences(of: "zmdi-", with: "")
  }
}