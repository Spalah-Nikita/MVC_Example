//
//  ViewControllerProtocol.h
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

// Протокол взаимодействия из ContentView в ViewController
@protocol InterfaceInputProtocol <NSObject>

- (void)buttonWasTapped;

@end

// Протокол взаимодействия из ViewController в ContentView
@protocol InterfaceOutputProtocol <NSObject>

- (void)updateInterfaceWithText:(NSString*)text;

@end

// Протокол взаимодействия из ViewController в Calculate (модель)
@protocol ModelInputProtocol <NSObject>

- (void)calculateSomething;

@end

// Протокол взаимодействия из Calculate (модель) в ViewController
@protocol ModelOutputProtocol <NSObject>

- (void)sendResult:(NSString *)result;

@end
