Crypto Coin for Swift
=======
Modular Swift framework for crypto currencies such as Bitcoin, Litecoin and Dogecoin.

Introduction
============
The CryptoCoinSwift project is inspired by [CryptoCoinJS](http://cryptocoinjs.com) and tries the follow the same class organization. CryptoCoinJS adheres to the UNIX philosophy - "the idea of building small components that do one thing and do it well". It includes tons of tests which should make it easier to reproduce its functionality.

CryptoCoinSwift is designed for the [Swift](https://developer.apple.com/swift/) programming language for iOs and Mac. 

Everything including the elliptic curve cryptography and RIPEMD160 hash was built from the ground up. The only dependency apart from things like NSData is Foundations built in SHA256 implementation. It does not depend on OpenSSL.

You can either use the complete Crypto Coin UIKit Framework in your application or you can mix and match any of the individual components seperately through their own repositories. 

The current implementation is extremely limited in functionality and the cryptograhphy has not been tested sufficiently. It's also still too slow to run on an iOs device. In other words: don't use this in a real app yet. 

Demo
====
  
    git clone 
  
Select Demo from the list of targets, click Edit Scheme and check that the build configuration for Run is set to Fast. Run. After about 12 seconds on a MacBook Pro you should be given a Bitcoin private and public key. You can import the private in your favorite Bitcoin wallet (at your own risk of course).

Tests
=====
Lots of them. Set the test build configuration to Fast if you're in a hurry, but set it back to Debug when you want assert statements to work...

Once the framework is sufficiently efficient it should no longer be necessary to run tests in fast mode. Then that build configuration should be deleted.

Frameworks and submodules
=========================
The framework is divided accross several Github repositories, roughly following the structure of CryptoCoinJS. If a class depends on a class in another repository it is included as a git submodule. 

There are currently 4 Cocoa frameworks: CryptoCoin, ECurve, UInt256 and RIPEMD. This is a lower granularity than the git repositories. The reason for that is that it's rather tedious to split XCode projects into smaller chunks and the dependency circus can easily get out of hand. It may be worth waiting for the new Framework functionality to mature before splitting it up any further. There are some Cocoa Touch frameworks, but those are not all configured yet. 

It would also be nicer to create seperate Cocoapods for each of the frameworks and let those handle the dependencies, rather than using git submodules.

Documentation
=============
I plan to use [Playgrounds](https://developer.apple.com/library/prerelease/ios/recipes/xcode_help-source_editor/ExploringandEvaluatingSwiftCodeinaPlayground/ExploringandEvaluatingSwiftCodeinaPlayground.html) for documentation once this becomes possible. Until then the tests and CryptoJS documentation are a good start.
