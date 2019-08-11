//
//  ClassB.h
//  rookie
//
//  Created by 薛祥清 on 2019/8/10.
//  Copyright © 2019 薛祥清. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassA.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClassB : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) ClassA *classA;
@property (nonatomic, weak) id delegate;
@property (nonatomic, assign) int number;

@property (nonatomic, assign) BOOL isDeepCopy;

@end

NS_ASSUME_NONNULL_END
