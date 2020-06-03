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


@end
