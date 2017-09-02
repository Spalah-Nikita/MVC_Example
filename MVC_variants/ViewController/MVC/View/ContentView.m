//
//  ContentView.m
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView

- (IBAction)buttonWasTapped:(id)sender
{
    [self.input buttonWasTapped];
}

- (void)updateInterfaceWithText:(NSString *)text
{
    self.infoLabel.text = text;
}

@end
