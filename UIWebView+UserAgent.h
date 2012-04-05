//
//  UIWebView+UserAgent.h
//
//  Created by kazuma_ukyo on 12/04/04.
//

#import <Foundation/Foundation.h>
#import "UserAgent.h"


@interface UIWebView(UserAgent)
+ (UIWebView*)webViewWithUserAgent:(NSString*)userAgent;
+ (void)resetUserAgent;
@end
