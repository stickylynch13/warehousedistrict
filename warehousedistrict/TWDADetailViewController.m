//
//  TWDADetailViewController.m
//  warehousedistrict
//
//  Created by Don Miller on 11/19/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import "TWDADetailViewController.h"

@interface TWDADetailViewController ()

@end

@implementation TWDADetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"Businesses", @"Businesses");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImage *image = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.toledowarehouse.org/clientuploads/img/bcreative.jpg"]]];
    [_logoURL setImage:image];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
