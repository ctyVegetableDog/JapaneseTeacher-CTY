//
//  Word.m
//  J
//
//  Created by 崔泰毓 on 16/08/2019.
//  Copyright © 2019 崔泰毓. All rights reserved.
//

#import "Word.h"

@implementation Word

-(id) initWithPing:(NSString*) ping WithPian:(NSString*) pian WithPronounciation:(NSString*) pronounciation
{
    self = [super init];
    if (self) {
        _ping = [ping copy];
        _pian = [pian copy];
        _pronounciation = [pronounciation copy];
    }
    return self;
}

@end
