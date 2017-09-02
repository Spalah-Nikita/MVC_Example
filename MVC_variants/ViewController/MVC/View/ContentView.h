//
//  ContentView.h
//  MVC_variants
//
//  Created by Nikita Vintonovich on 9/2/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerProtocol.h"

// в угловых скобках мы указываем протокол, методы которого будут реализованы внутри объекта ContentView
@interface ContentView : UIView <InterfaceOutputProtocol>

@property (nonatomic, weak) IBOutlet UILabel * infoLabel;
@property (nonatomic, weak) IBOutlet UIButton *button;

// это проерти позволит хранить в себе объект, котороый будет реализовывать методы протокола InterfaceInputProtocol
// т.е. с помощью этого свойства мы сможем вызвать метод протокола InterfaceInputProtocol
@property (nonatomic, weak) id <InterfaceInputProtocol> input;

@end
