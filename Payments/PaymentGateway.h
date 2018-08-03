//
//  PaymentGateway.h
//  Payments
//
//  Created by Bennett on 2018-08-03.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger)amount;
@end
