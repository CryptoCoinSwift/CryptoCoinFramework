Crypto Coin for Swift
=======
Modular Swift framework for crypto currencies such as Bitcoin, Litecoin and Dogecoin.

Introduction
============
The CryptoCoinSwift project is inspired by [CryptoCoinJS](http://cryptocoinjs.com) and tries the follow the same class organization. CryptoCoinJS adheres to the UNIX philosophy - "the idea of building small components that do one thing and do it well". It includes tons of tests which should make it easier to reproduce its functionality.

CryptoCoinSwift is designed for the [Swift](https://developer.apple.com/swift/) programming language for iOs and Mac and uses [Playgrounds](https://developer.apple.com/library/prerelease/ios/recipes/xcode_help-source_editor/ExploringandEvaluatingSwiftCodeinaPlayground/ExploringandEvaluatingSwiftCodeinaPlayground.html) for documentation.

CryptoCoinSwift does not depend on OpenSSL.

You can either use the complete Crypto Coin UIKit Framework in your application or you can mix and match any of the individual components seperately through their own repositories. 

The current implementation is extremely limited in functionality and is only tested with iOs. If you're in a hurry to build an app, you should look for an alternative.

Frameworks and submodules
=========================
The framework is divided accross several Github repositories, roughly following the structure of CryptoCoinJS. If a class depends on a class in another repository it is included as a git submodule. 

There are currently 3 Cocoa Touch frameworks: CryptoCoin, ECurve and UInt256. This is a lower granularity than the git repositories. The reason for that is that it's rather tedious to split XCode projects into smaller chunks and the dependency circus can easily get out of hand. It may be worth waiting for the new Framework functionality to mature before splitting it up any further.

It would also be nicer to create seperate Cocoapods for each of the frameworks and let those handle the dependencies, rather than using git submodules.