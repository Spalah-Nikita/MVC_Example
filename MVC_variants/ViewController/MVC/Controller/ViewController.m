//
//  ViewController.m
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerProtocol.h"
#import "ContentView.h"
#import "Calculate.h"

@interface ViewController () <InterfaceOutputProtocol, ModelOutputProtocol>

@property (weak, nonatomic) IBOutlet ContentView *contentView;
@property (strong, nonatomic) Calculate *model;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.model = [Calculate new];
    
    self.contentView.input = self;
    self.model.output = self;
    
}


- (void)buttonWasTapped
{
    [self.model calculateSomething];
}

- (void)sendResult:(NSString *)result
{
    [self.contentView updateInterfaceWithText:result];
}

@end
