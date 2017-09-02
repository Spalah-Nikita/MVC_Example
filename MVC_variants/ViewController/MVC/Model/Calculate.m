//
//  Calculate.m
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "Calculate.h"

@interface Calculate ()

@property (nonatomic, strong) NSArray *arrayOfStrings;

@end

@implementation Calculate

#pragma mark - Model Input Protocol Methods

- (void)calculateSomething
{
    NSString *result = [self generateSomeResult];
    // вызываем метод протокола ModelOutputProtocol и передает в нее рвнее выбранную строку
    // метод sendResult: реализован во ViewController.m
    [self.output sendResult:result];
}

#pragma mark - Private Methods

- (NSString*)generateSomeResult
{
    NSInteger randomIndex = arc4random() % self.arrayOfStrings.count;
    NSString *resultString = self.arrayOfStrings[randomIndex];
    
    return resultString;
}

#pragma mark - Lazy Initialization Methods

- (NSArray*)arrayOfStrings
{
    if (!_arrayOfStrings)
    {
        NSMutableArray *array = [NSMutableArray array];
        
        for (NSInteger i = 0; i < 20; i++)
        {
            NSString *string = [NSString stringWithFormat:@"Some result string %lu", i];
            [array addObject:string];
        }
        
        _arrayOfStrings = array;
    }
    return _arrayOfStrings;
}

@end
