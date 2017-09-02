//
//  Calculate.h
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewControllerProtocol.h"

// в угловых скобках мы указываем протокол, методы которого будут реализованы внутри объекта Calculate
@interface Calculate : NSObject <ModelInputProtocol>

// это проерти позволит хранить в себе объект, котороый будет реализовывать методы протокола ModelOutputProtocol
// т.е. с помощью этого свойства мы сможем вызвать метод протокола ModelOutputProtocol
@property (nonatomic, weak) id <ModelOutputProtocol> output;

@end
