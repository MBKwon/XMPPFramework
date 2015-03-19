//
//  XMPPOfflineMessage.h
//  iPhoneXMPP
//
//  Created by MB KWON on 3/19/15.
//  Copyright (c) 2015 XMPPFramework. All rights reserved.
//

#import "XMPPModule.h"

@interface XMPPOfflineMessage : XMPPModule


-(BOOL)discoverServerSupport;


-(void)requestNumberOfMessages;
-(void)requestMessageHeaders;


-(void)retriveSpecificMessages;
-(void)removeSpecificMessages;


-(void)retriveAllMessagesWithDomain:(NSString *)domain;
-(void)removeAllMessages;

@end
