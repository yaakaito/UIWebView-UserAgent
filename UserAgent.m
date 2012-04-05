//
//  UserAgent.m
//
//  Created by kazuma_ukyo on 12/04/04.
//

#import "UserAgent.h"

@implementation UserAgent
@synthesize loaded;
+ (NSString *)defaultUserAgent {
    // shared
    static dispatch_once_t pred = 0;
    static NSString *applicationUserAgent;
    dispatch_once(&pred, ^{
        UserAgent *userAgent = [[self alloc] init];
        UIWebView *webView = [[UIWebView alloc] init];

        NSString *command =[NSString stringWithFormat:@"navigator.userAgent"];
        applicationUserAgent = [webView stringByEvaluatingJavaScriptFromString:command];
        [applicationUserAgent retain];

        [webView release];
        [userAgent release];
        
    });
    
    return applicationUserAgent;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    self.loaded = YES;
}
@end
