//
//  Word.h
//  J
//
//  Created by 崔泰毓 on 16/08/2019.
//  Copyright © 2019 崔泰毓. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Word : NSObject

@property NSString* ping;
@property NSString* pian;
@property NSString* pronounciation;

-(id) initWithPing:(NSString*) ping WithPian:(NSString*) pian WithPronounciation:(NSString*) pronounciation;

@end

NS_ASSUME_NONNULL_END
