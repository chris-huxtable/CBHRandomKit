# CHRandomKit

An easier and safer to use interface for good, cryptographically secure, random.


## Use

`CHRandom` provides class methods for producing random data of fixed and variable length with bounding constraints.

#### Example:

Generate a random `NSUInteger`:
```objective-c
NSUInteger randInt = [CHRandom randomUnsignedInteger];
```

Generate a random `NSUInteger` less then 128:
```objective-c
NSUInteger randInt = [CHRandom randomUnsignedIntegerWithBound:128];
```

Generate a random `NSUInteger` between 64 and 128 inclusive:
```objective-c
NSUInteger randInt = [CHRandom randomIntegerBetweenLower:64 andUpperBound:128];
```


## Licence
CHRandomKit is available under the [ISC license](https://github.com/chris-huxtable/CHRandomKit/blob/master/LICENSE).
