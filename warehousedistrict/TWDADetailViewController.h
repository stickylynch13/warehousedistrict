//
//  TWDADetailViewController.h
//  warehousedistrict
//
//  Created by Don Miller on 11/19/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TWDADetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *businessName;
@property (nonatomic, strong) IBOutlet UILabel *address;
@property (nonatomic, strong) IBOutlet UILabel *phone;
@property (nonatomic, strong) IBOutlet UILabel *website;
@property (nonatomic, strong) IBOutlet UIImageView *logoURL;
@property (nonatomic, strong) IBOutlet UITextView *description;

@property (nonatomic, strong) NSDictionary *item;

@end
