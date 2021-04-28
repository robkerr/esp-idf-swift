# esp-idf-swift

This repository is a restructure of the ESP-IDF code into a repository that supports Swift Package Manager, while maintaining support for CocoaPods.

To support both package managers, the Objective-C modules are refactored into their own repository:
[esp-idf-objc](https://github.com/robkerr/esp-idf-objc)

This is done because for Swift Package Manager, the Objective-C module is its own target, and thus its own module.  If the Objective-C code is its own module, then for CocoaPods it needs to be its own Pod, which implies its own git repo/podspec.

In total the following structure changes were implemented as part of this refactor:

- .m and .h modules moved to esp-idf-objc
- source code relocated below Sources folder (SPM expectation)
- for esp-idf-objc, the module name CESPProvision was used (suggested as convention by swift package manager docs)
- for esp-idf-objc, the umbrella .h file renamed CESPProvision.h, and located in Sources/include folder (per SPM spec)
- In the esp-idf-swift moduoe, added "Import CESPProvision" to the following files: CryptoAES.swift, ESPExtensions.swift, ESPDevice.swift. This is needed since the C functions are in their own module.
- .podspec for esp-idf-swift is modified slightly to point to the Sources folder for .swift files
- .podspec for esp-idf-swift adds a dependency to esp-idf-objc
- .podspec for esp-idf-objc created
- Package.swift created for both esp-idf-objc and esp-idf-swift.

The resulting experience for developers:
- CocoaPod users would integreate the library as before, by adding pod ESPProvision to their Podfile
- Swift Package Manager users would use the .git url for the esp-idf-swift repository
- For both CocoaPods and SPM, the dependent C module will be imported automatically.
