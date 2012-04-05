//
//  UIWebView+UserAgent.m
//
//  Created by kazuma_ukyo on 12/04/04.
//

#import "UIWebView+UserAgent.h"

@implementation UIWebView(UserAgent)
+ (UIWebView *)webViewWithUserAgent:(NSString *)userAgent {
    NSDictionary *new = [NSDictionary dictionaryWithObject:userAgent forKey:@"UserAgent"];
    [[NSUserDefaults standardUserDefaults] registerDefaults:new];

    UIWebView *webView = [[UIWebView alloc] init];
    return [webView autorelease];
}

+ (void)resetUserAgent {
    NSString *userAgent = [UserAgent defaultUserAgent];
    NSDictionary *def = [NSDictionary dictionaryWithObject:userAgent forKey:@"UserAgent"];
    [[NSUserDefaults standardUserDefaults] registerDefaults:def];
}

@end
