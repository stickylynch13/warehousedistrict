//
//  TWDAParser.m
//  warehousedistrict
//
//  Created by Don Miller on 11/12/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import "TWDAParser.h"

@implementation TWDAParser

-(NSArray *)parseBusinessJSON
{
    NSString *searchURL = @"http://warehousedistrict.herokuapp.com/api/businesses/all.json";
    
    NSLog(@"%@", searchURL);
    
    NSError *error = nil;
    NSData *jsonData = [NSData dataWithContentsOfURL:[NSURL URLWithString:searchURL]];
    
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
        
        // loop through movies
        NSMutableArray *nameArray = [NSMutableArray array];
        for (id name in jsonObjects)
        {
            NSLog(@"%@", [name objectForKey:@"name"]);
            [nameArray addObject:[name objectForKey:@"name"]];
//            NSLog(@"%@", [[NSString stringWithFormat:@"%@", name]
//                                stringByTrimmingCharactersInSet:
//                                [NSCharacterSet whitespaceCharacterSet]]);
        
        }
        return nameArray;
    }
    else
    {
        return nil;
    }
}


@end
