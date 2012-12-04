//
//  TWDAMapViewController.m
//  warehousedistrict
//
//  Created by Don Miller on 11/12/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import "TWDAMapViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface TWDAMapViewController () {
    MKMapView *_mapView;
}

@end

@implementation TWDAMapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.title = NSLocalizedString(@"Map", @"Map");
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    _mapView = [[MKMapView alloc] initWithFrame:self.view.frame];
    _mapView.delegate = self;
    
    // Create Warehouse district overlay
    MKPolygon *district = [self districtOverlay];
    [_mapView addOverlay:district];
    
    // Set Default Zoom of Map
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(41.644761, -83.541327);
    MKCoordinateSpan span = MKCoordinateSpanMake(0.0114, 0.0126);
    MKCoordinateRegion mapRegion = MKCoordinateRegionMake(center, span);
    [_mapView setRegion:mapRegion];
    
    self.view = _mapView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Map Overlay
- (MKPolygon *)districtOverlay
{
    CLLocationCoordinate2D points[8];
    points[0] = CLLocationCoordinate2DMake(41.6511, -83.5420);
    points[1] = CLLocationCoordinate2DMake(41.6479, -83.5354);
    points[2] = CLLocationCoordinate2DMake(41.6397, -83.5354);
    points[3] = CLLocationCoordinate2DMake(41.6397, -83.5464);
    points[4] = CLLocationCoordinate2DMake(41.6416, -83.5480);
    points[5] = CLLocationCoordinate2DMake(41.6504, -83.5480);
    points[6] = CLLocationCoordinate2DMake(41.6504, -83.5447);
    points[7] = CLLocationCoordinate2DMake(41.6497, -83.5430);
    return [MKPolygon polygonWithCoordinates:points count:8];
}

#pragma mark - MKMapDelegate
- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id<MKOverlay>)overlay
{
    if ([overlay isKindOfClass:[MKPolygon class]]) {
        MKPolygonView *polyView = [[MKPolygonView alloc] initWithPolygon:overlay];
        polyView.fillColor = [UIColor colorWithRed:124/255.0 green:169/255.0 blue:197/255.0 alpha:0.440];
        polyView.strokeColor = [UIColor colorWithRed:126/255.0 green:169/255.0 blue:62/255.0 alpha:1.000];
        polyView.lineWidth = 4;
        return polyView;
    }
    
    return nil;
}

@end
