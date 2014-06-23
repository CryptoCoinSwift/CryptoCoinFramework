import UIKit

let c = 4


import CryptoCoin

let b = 2
let a = 5


// Unfortunately this doesn't seem to be possible yet.
// http://stackoverflow.com/questions/24045245/how-to-import-own-classes-from-your-own-project-into-a-playground
// http://stackoverflow.com/questions/24046160/how-to-i-import-3rd-party-frameworks-into-xcode-playground
// I tried creating a symlink as suggested in the second post, but it still won't find the framework:
// ln -s ~/DemoApp/Crypto\ Coin\ Swift /Applications/Xcode6-Beta.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator8.0.sdk/System/Library/Frameworks/CryptoCoin.framework
// I also tried copying rather than symlinking.
// Here DemoApp is an example app and CryptoCoin is a submodule at "Crypto Coin Swift".

let coinKey = CoinKey.generateRandom()


coinKey.publicAddress
