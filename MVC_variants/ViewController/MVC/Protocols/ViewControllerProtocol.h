//
//  ViewControllerProtocol.h
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol InterfaceInputProtocol <NSObject>

- (void)buttonWasTapped;

@end

@protocol InterfaceOutputProtocol <NSObject>

- (void)updateInterfaceWithText:(NSString*)text;

@end

@protocol ModelInputProtocol <NSObject>

- (void)calculateSomething;

@end

@protocol ModelOutputProtocol <NSObject>

- (void)sendResult:(NSString *)result;

@end
