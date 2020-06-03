//
//  TestBaseObject.m
//  TestNSDictionary
//
//  Created by Bill liu on 2020/6/2.
//  Copyright © 2020 Mzying. All rights reserved.
//

#import "TestBaseObject.h"

@implementation TestBaseObject

///MARK: - Life Cycle

- (instancetype)initWithName:(NSString *)name age:(NSNumber *)age hegiht:(NSUInteger)height{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _height = height;
    }
    return self;
}

///MARK: - Public Method

+ (void)run{
    
    [self begin];
    
    
    TestBaseObject *obj1 = [[TestBaseObject alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    TestBaseObject *obj2 = [[TestBaseObject alloc] initWithName:@"wahaha" age:@(1) hegiht:200];
    
    NSMutableDictionary *tempMDictionary = [NSMutableDictionary new];
    [tempMDictionary setObject:obj1 forKey:obj1];
    [tempMDictionary setObject:obj2 forKey:obj2];
    
    NSLog(@"count:%zi, values:%@, obj1:%@", tempMDictionary.count, tempMDictionary.allValues, tempMDictionary[obj1]);
    
    
    [self end];
    
}


///MARK: - Private Method

+ (void)begin{
    NSLog(@"----begin %@----", self);
}


+ (void)end{
    NSLog(@"----end %@----", self);
}

///MARK: - NSCopying

- (id)copyWithZone:(nullable NSZone *)zone{
    TestBaseObject *obj = [[TestBaseObject alloc] initWithName:self.name age:self.age hegiht:self.height];
    return obj;
}


///MARK: - Equal

- (BOOL)isEqual:(id)other{

    NSLog(@"%@ call super isEqual: method", self);

    if (other == self) {
        return YES;
    } else if (![other isKindOfClass:self.class]) {
        return NO;
    } else {
        return [self isEqualToObject:other];
    }
}


- (BOOL)isEqualToObject:(TestBaseObject *)other{
    if (other == nil) {
        return NO;
    }

    BOOL equalName = (self.name != nil && other.name != nil && [self.name isEqualToString:other.name]);
    BOOL equalAge = (self.age != nil && other.age != nil && [self.age isEqualToNumber:other.age]);
    BOOL equalHeight = self.height == other.height;

    return equalName && equalAge && equalHeight;

}


- (NSUInteger)hash{
    NSUInteger hash = self.name.hash ^ self.age.hash ^ self.height;
    NSLog(@"%@ call super hash method:%zi", self, hash);
    return hash;
}


@end
