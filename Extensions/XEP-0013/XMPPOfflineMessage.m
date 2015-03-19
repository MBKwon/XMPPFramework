//
//  XMPPOfflineMessage.m
//  iPhoneXMPP
//
//  Created by MB KWON on 3/19/15.
//  Copyright (c) 2015 XMPPFramework. All rights reserved.
//

#import "XMPP.h"
#import "XMPPOfflineMessage.h"


@interface XMPPOfflineMessage () <XMPPStreamDelegate>
@end

@implementation XMPPOfflineMessage



-(BOOL)discoverServerSupport
{
    return YES;
}


-(void)requestNumberOfMessages
{
    
}

-(void)requestMessageHeaders
{
    
}


-(void)retriveSpecificMessages
{
    
}

-(void)removeSpecificMessages
{
    
}


-(void)retriveAllMessagesWithDomain:(NSString *)domain
{
    NSString *offlineMessageProtocol = [NSString stringWithFormat:@"%@/protocol/offline", domain];
    
    NSXMLElement *query = [NSXMLElement elementWithName:@"offline" xmlns:offlineMessageProtocol];
    NSXMLElement *fetchTag = [NSXMLElement elementWithName:@"fetch"];
    [query addChild:fetchTag];
    
    NSString *uuid = [xmppStream generateUUID];
    XMPPIQ *iq = [XMPPIQ iqWithType:@"get" elementID:uuid child:query];
    
    [xmppStream sendElement:iq];
}

-(void)removeAllMessages
{
    
}



#pragma mark XMPPStream Delegate
- (BOOL)xmppStream:(XMPPStream *)sender didReceiveIQ:(XMPPIQ *)iq
{
    return NO;
}

-(void)xmppStream:(XMPPStream *)sender didReceiveMessage:(XMPPMessage *)message
{
    [message
}



@end
