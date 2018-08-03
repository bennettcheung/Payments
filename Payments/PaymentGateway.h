//
//  PaymentGateway.h
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;
@end



@interface PaymentGateway : NSObject

@property (nonatomic, weak) id paymentDelegate;

-(void)processPaymentAmount:(NSInteger)amount;
@end
