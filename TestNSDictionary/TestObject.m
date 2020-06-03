//
//  TestObject.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/5/30.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject


- (instancetype)initWithName:(NSString *)name age:(NSNumber *)age hegiht:(NSUInteger)height{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _height = height;
    }
    return self;
}


- (BOOL)isEqual:(id)other{

    NSLog(@"%@ call isEqual method", self);

    if (other == self) {
        return YES;
    } else if (![other isKindOfClass:self.class]) {
        return NO;
    } else {
        return [self isEqualToObject:other];
    }
}


- (BOOL)isEqualToObject:(TestObject *)other{
    if (other == nil) {
        return NO;
    }

    BOOL equalName = (self.name != nil && other.name != nil && [self.name isEqualToString:other.name]);
    BOOL equalAge = (self.age != nil && other.age != nil && [self.age isEqualToNumber:other.age]);
    BOOL equalHeight = self.height == other.height;

    return equalName && equalAge && equalHeight;

}


- (NSUInteger)hash{
    NSLog(@"%@ call hash method", self);
    return self.name.hash ^ self.age.hash ^ self.height;
}

//- (NSUInteger)hash{
//    NSLog(@"%@ super hash", self);
//    NSString *pointString = [NSString stringWithFormat:@"%p", self];
//    NSUInteger superHash = [super hash];
//
//    NSString * temp10 = [NSString stringWithFormat:@"%lu",strtoul([pointString UTF8String],0,16)];
//
//    NSUInteger nsobjectDefault = (NSUInteger)self>>4;
//
//    return superHash;
//}


///MARK: - NSCopying

- (id)copyWithZone:(nullable NSZone *)zone{
    TestObject *obj = [[TestObject alloc] initWithName:self.name age:self.age hegiht:self.height];
    return obj;
}


@end
