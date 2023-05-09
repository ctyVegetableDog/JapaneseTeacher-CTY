//
//  WordFactory.h
//  J
//
//  Created by 崔泰毓 on 16/08/2019.
//  Copyright © 2019 崔泰毓. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WordFactory : NSObject

@property NSArray* productList;

-(id) initWithAllProducts;
-(NSArray*) productWordPairs;

@end

NS_ASSUME_NONNULL_END
