//
//  TWDAParser.h
//  warehousedistrict
//
//  Created by Don Miller on 11/12/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TWDABusinesses.h"

@interface TWDAParser : NSObject

-(NSArray *)parseBusinessJSON:(NSString *)categoryId;

@end
