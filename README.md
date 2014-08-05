Crypto Coin for Swift
=======
A modular framework for Bitcoin, Litecoin, Dogecoin, etc. written in Swift (and a bit of C).

Introduction
============
The CryptoCoinSwift project is inspired by [CryptoCoinJS](http://cryptocoinjs.com) and tries the follow the same class organization. CryptoCoinJS adheres to the UNIX philosophy - "the idea of building small components that do one thing and do it well". It includes tons of tests which should make it easier to reproduce its functionality.

CryptoCoinSwift is designed for the [Swift](https://developer.apple.com/swift/) programming language for iOs and Mac. 

Everything including the elliptic curve cryptography and RIPEMD160 hash was built from the ground up. The only dependency apart from things like NSData is Foundations built in SHA256 implementation. It does not depend on OpenSSL. Everything is written in Swift with the exception of a few math functions which had to be implemented in C for performance reasons.

You can either use the complete Crypto Coin Cocoa(Touch) Framework in your application or you can mix and match any of the individual components seperately through their own repositories. 

The current implementation is extremely limited in functionality and the cryptograhphy has not been tested sufficiently. It's also still too slow to run on an iOs device. In other words: don't use this in a real app yet. 

Demo
====
  
    git clone --recursive git@github.com:CryptoCoinSwift/CryptoCoinFramework.git
    
Open CryptoCoin.xcworkspace. Select Demo from the list of targets, click Edit Scheme and set the build configuration for Run to Fast. Run. You should be given a Bitcoin private and public key in the console. You can import the private in your favorite Bitcoin wallet (at your own risk of course). 

There's also an Xcode project with an iOs demo which you can on the simulator or a real device. Depending on the device, you'll need some patience. Currently iOs just pulls in all of the Swift files without a framework.

There's also a playground, but it doesn't work yet.

If you get a Build Failed error without explanation, select CryptoCoin Mac from the list of schemes and build that first. You should get better error message in that case (or none at all and the demo will work fine next time).

Tests
=====
Almost every struct and class comes with tests. They can be run from the Xcode projects as follows:

* CryptoCoin (CoinKey, ECKey and SHA256) : select CryptoCoinMac as the target
* ECurve (ECurve, ECPoint)
* UInt256
* RIPEMD just has its own tests

Be sure to select the "...Mac" targets for now, before running the tests. Set the test build configuration to Fast if you're in a hurry, but set it back to Debug when you want assert statements to work...

Once the framework is sufficiently efficient it should no longer be necessary to run tests in fast mode. Then that build configuration should be deleted.

Frameworks and submodules
=========================
The framework is divided accross several Github repositories, roughly following the structure of CryptoCoinJS. If a class depends on a class in another repository it is included as a git submodule. 

There are currently 4 Cocoa frameworks: CryptoCoin, ECurve, UInt256 and RIPEMD. This is a lower granularity than the git repositories. The reason for that is that it's rather tedious to split XCode projects into smaller chunks and the dependency circus can easily get out of hand. It may be worth waiting for the new Framework functionality to mature before splitting it up any further. There are also Cocoa Touch frameworks and often work in the simulator, but not on the device, especially the top level CryptoCoin framework. 

It would also be nicer to create seperate Cocoapods for each of the frameworks and let those handle the dependencies, rather than using git submodules.

Documentation
=============
I plan to use [Playgrounds](https://developer.apple.com/library/prerelease/ios/recipes/xcode_help-source_editor/ExploringandEvaluatingSwiftCodeinaPlayground/ExploringandEvaluatingSwiftCodeinaPlayground.html) for documentation once this becomes possible. Until then the demos, tests and CryptoJS documentation are a good start.