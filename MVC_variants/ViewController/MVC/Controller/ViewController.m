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

@interface ViewController () <InterfaceInputProtocol, ModelOutputProtocol>

@property (weak, nonatomic) IBOutlet ContentView *contentView;
@property (strong, nonatomic) Calculate *calculateModel;


@end

@implementation ViewController

#pragma mark - View Controller Life Cycle Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // напомню, что self - это зарезервированная переменная, котороая позволяет обращаться к классу внутри себя
    // т.е. сейчас self - это объект ViewController
    
    // говорим contentView, что методы протокола InterfaceInputProtocol будут реализованы здесь
    self.contentView.input = self;
    
    // говорим calculateModel, что методы протокола ModelOutputProtocol будут реализованы здесь
    self.calculateModel.output = self;
}

#pragma mark - Interface Input Protocol Methods

- (void)buttonWasTapped
{
    // вызываем метод протокола ModelInputProtocol
    [self.calculateModel calculateSomething];
}

#pragma mark - Model Output Protocol Methods

- (void)sendResult:(NSString *)result
{
    // вызываем метод протокола InterfaceOutputProtocol
    [self.contentView updateInterfaceWithText:result];
}

#pragma mark - Lazy Initialization Methods

- (Calculate*)calculateModel
{
    if (!_calculateModel)
    {
        _calculateModel = [Calculate new];
    }
    return _calculateModel;
}

@end
