//
//  ContentView.m
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView

#pragma mark - User Interface Action Methods

- (IBAction)buttonWasTapped:(id)sender
{
    // вызываем метод протокола InterfaceInputProtocol
    // метод реализован во ViewController.m
    [self.input buttonWasTapped];
}

#pragma mark - Interface Output Protocol Methods

- (void)updateInterfaceWithText:(NSString *)text
{
    self.infoLabel.text = text;
}

@end
