//
//  Calculate.m
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

- (void)calculateSomething
{
    NSString *result = @"result";
    [self.output sendResult:result];
}

@end
