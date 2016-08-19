Homekit Accessory Protocol, implemented in Swift
================================================

The goal of this package is to provide a complete implementation of the Homekit Accessory Protocol, to build your DIY accessories, or provide a bridge for non-HAP devices.

**Implementation notes:**

Currently ``GenericCharacteristic<T>`` is used, to allow for user-defined value types. As Swift requires homegenous arrays, a protocol ``AnyCharacteristic`` is introduced. I don't like the resulting implementation as the generics result in a cascade of workarounds (boxing + ``ObjectIdentifier()``).

**Status:**

* [x] Setup
* [x] Pairing
* [x] Updating values
* [x] Notifications
* [x] Split ``hap-server`` into executable and library
* [ ] Include all Accessories, Services and Characteristics
* [x] API (update value from code, and send notifications)
* [ ] Device identify callback (/identify) (forward to all accessories?)
* [ ] Accessory identify callback (on self.info.identify)
* [ ] Cleanup encryption; currently OpenSSL + libsodium + CryptoSwift are used, would prefer a single dependency
* [ ] Cleanup runloop, put some work on a queue?
* [ ] Cleanup server instantiation
* [ ] Overall cleanup
* [ ] Documentation
* [ ] Tests
* [ ] Verify authentication in /characteristic and /accessories

**Usage:**

Run ``swift build`` to compile and ``.build/debug/hap-server`` to run. Modify ``Sources/hap-server/main.swift`` to include your own accessories.
