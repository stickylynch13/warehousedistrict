//
//  TWDAParser.m
//  warehousedistrict
//
//  Created by Don Miller on 11/12/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import "TWDAParser.h"

@implementation TWDAParser

-(NSMutableArray *)parseBusinessJSON
{
    // Format search bar
    NSString* formattedSearch = @"Forest Gump";
    
    // Variable to store our API Key
    NSString* const RT_API_KEY = @"t7c5rszh63xhsk2r8n4yqrd8"; // This is where you put your API key
    NSString* searchURL = [NSString
                           stringWithFormat:@"http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=%@&q=%@",
                           RT_API_KEY, formattedSearch];
    
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
        
       	NSArray *movieArray = [jsonObjects objectForKey:@"movies"];
        
        // loop through movies
        for (NSDictionary *movie in movieArray)
        {
            NSLog(@"%@ is %@", movie, [jsonObjects objectForKey:movie]);
            
            // Get dvd and theater release
            NSDictionary *release_dates = [movie objectForKey:@"release_dates"];
            
            NSString *theaterRelease = [release_dates objectForKey:@"theater"];
            
            NSString *dvdRelease = [release_dates objectForKey:@"dvd"];
            
            // Show the critics consensus; overwrites json output
            // [txtOutput setText:[movie objectForKey:@"critics_consensus"]];
        }
    }
    else
    {
        // Handle Error
    }
}


@end
