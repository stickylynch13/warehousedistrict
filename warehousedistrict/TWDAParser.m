//
//  TWDAParser.m
//  warehousedistrict
//
//  Created by Don Miller on 11/12/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import "TWDAParser.h"

@implementation TWDAParser

//NSString *business = @"0";
//NSString *restaurants = @"1";
//NSString *realEstate = @"2";
//NSString *retail = @"3";
NSString *businessSearchURL = @"http://warehousedistrict.herokuapp.com/api/businesses/all.json";

-(NSArray *)parseBusinessJSON:(NSString *)categoryId
{
    NSError *error = nil;
    NSData *jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:businessSearchURL]];
    
    if (jsonData)
    {
        id jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonData
                                                         options:NSJSONReadingMutableContainers
                                                           error:&error];
        
        if (error)
        {
            NSLog(@"error is %@", [error localizedDescription]);
            
            // Handle Error and return
            return nil;
        }
        
        NSMutableArray *nameArray = [NSMutableArray array];
        for (id name in jsonObjects)
        {
            NSString *jsonCategoryId = [NSString stringWithFormat:@"%@", [name objectForKey:@"category_id"]];
            
            if ([jsonCategoryId isEqualToString:categoryId])
            {
                [nameArray addObject:[name objectForKey:@"name"]];
            }
            
            // We merged retail and business so this is a hack that handles that merge
            if ([categoryId isEqualToString:@"0"] && [jsonCategoryId isEqualToString:@"3"])
            {
                [nameArray addObject:[name objectForKey:@"name"]];
            }
        }
        return nameArray;
    }
    else
    {
        return nil;
    }
}


@end
