//
//  ContentView.h
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerProtocol.h"

@interface ContentView : UIView <InterfaceOutputProtocol>

@property (nonatomic, weak) IBOutlet UILabel * infoLabel;
@property (nonatomic, weak) IBOutlet UIButton *button;

@property (nonatomic, weak) id <InterfaceInputProtocol> input;

@end
