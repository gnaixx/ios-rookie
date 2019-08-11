//
//  ClassB.m
//  rookie
//
//  Created by 薛祥清 on 2019/8/10.
//  Copyright © 2019 薛祥清. All rights reserved.
//

#import "ClassB.h"

@implementation ClassB


-(id) copyWithZone:(NSZone *) zone {
    if (self.isDeepCopy == YES) {
        return [self deepCopy:zone];
    } else {
        return [self shallowCopy:zone];
    }
}

// 浅拷贝
-(id) shallowCopy:(NSZone *) zone {
    return self;
}

// 深拷贝
-(id) deepCopy:(NSZone *) zone {
    ClassB *copyObject = [[[self class] allocWithZone:zone] init];
    copyObject.name = [self.name mutableCopy];
    copyObject.classA = self.classA;
    copyObject.delegate = self.delegate;
    copyObject.number = self.number;
    return copyObject;
}


@end
