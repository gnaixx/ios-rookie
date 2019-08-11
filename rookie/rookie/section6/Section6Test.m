//
//  Section6Test.m
//  rookie
//
//  Created by 薛祥清 on 2019/8/11.
//  Copyright © 2019 薛祥清. All rights reserved.
//

#import "Section6Test.h"
#import "ClassA.h"
#import "ClassB.h"

@implementation Section6Test

+(void) testCopy {
    ClassA *classA = [[ClassA alloc] init];
    ClassB *classB = [[ClassB alloc] init];
    
    classB.name = @"ClassB";
    classB.classA = classA;
    classB.delegate = classA;
    classB.number = 123;
    
    // shallow copy
    classB.isDeepCopy = NO;
    ClassB *classB2 = [classB copy];
    NSLog(@"shallow copy -> org:%p, dst:%p", classB, classB2);
    NSLog(@"org(copy:%p, strong:%p, weak:%p, assign:%d)", classB.name, classB.classA, classB.delegate, classB.number);
    NSLog(@"dst(copy:%p, strong:%p, weak:%p, assign:%d)", classB2.name, classB2.classA, classB2.delegate, classB2.number);
    
    classB.isDeepCopy = YES;
    classB2 = [classB copy];
    NSLog(@"deep copy -> org:%p, dst:%p", classB, classB2);
    NSLog(@"org(copy:%p, strong:%p, weak:%p, assign:%d)", classB.name, classB.classA, classB.delegate, classB.number);
    NSLog(@"dst(copy:%p, strong:%p, weak:%p, assign:%d)", classB2.name, classB2.classA, classB2.delegate, classB2.number);
}

@end
