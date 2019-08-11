//
//  main.m
//  rookie
//
//  Created by 薛祥清 on 2019/8/10.
//  Copyright © 2019 薛祥清. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "section6/Section6Test.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // Section6
        [Section6Test testCopy];
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
