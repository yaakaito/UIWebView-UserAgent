//
//  UserAgent.h
//
//  Created by kazuma_ukyo on 12/04/04.
//

#import <Foundation/Foundation.h>

@interface UserAgent : NSObject<UIWebViewDelegate>
@property BOOL loaded;
+ (NSString *)defaultUserAgent;
@end
