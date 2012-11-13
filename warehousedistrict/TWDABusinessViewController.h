//
//  TWDABusinessViewController.h
//  warehousedistrict
//
//  Created by Don Miller on 11/12/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWDAParser.h"

@interface TWDABusinessViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *items;

@end
