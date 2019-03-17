# CBHRandomKit

[![release](https://img.shields.io/badge/release-1.3.2-blue.svg?cacheSeconds=2592000)](https://github.com/chris-huxtable/CBHRandomKit/releases)
[![licence](https://img.shields.io/badge/licence-ISC-lightgrey.svg?cacheSeconds=2592000)](https://github.com/chris-huxtable/CBHRandomKit/blob/master/LICENSE)
[![coverage](https://img.shields.io/badge/coverage-99%25-brightgreen.svg?cacheSeconds=2592000)](https://github.com/chris-huxtable/CBHRandomKit)

An easier and safer to use interface for good, cryptographically secure, random.


## Use

`CBHRandom` provides class methods for producing random data of fixed and variable length with bounding constraints.

#### Example:

Generate a random `NSUInteger`:
```objective-c
NSUInteger randInt = [CBHRandom randomUnsignedInteger];
```

Generate a random `NSUInteger` less then 128 inclusive:
```objective-c
NSUInteger randInt = [CBHRandom randomUnsignedIntegerWithBound:128];
```

Generate a random `NSUInteger` between 64 and 128 inclusive:
```objective-c
NSUInteger randInt = [CBHRandom randomIntegerBetweenLower:64 andUpperBound:128];
```

Shuffling an Array:
```objective-c
NSArray *array = @[@1, @2, @3, @4, @5];
NSArray *shuffledArray = [array arrayByShuffling];
```

Shuffling an Array in-place:
```objective-c
NSMutableArray *array = [NSMutableArray arrayWithObjects:@1, @2, @3, @4, @5, nil];
[array shuffle];
```

Requesting a random object from Array:
```objective-c
NSArray *array = @[@1, @2, @3, @4, @5];
NSNumber *number = [array randomObject];
```


## Licence
CBHRandomKit is available under the [ISC license](https://github.com/chris-huxtable/CBHRandomKit/blob/master/LICENSE).
