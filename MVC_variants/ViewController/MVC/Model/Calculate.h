//
//  Calculate.h
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewControllerProtocol.h"

@interface Calculate : NSObject <ModelInputProtocol>

@property (nonatomic, weak) id <ModelOutputProtocol> output;

@end
