//
//  TWDABusinesses.m
//  warehousedistrict
//
//  Created by Don Miller on 11/17/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import "TWDABusinesses.h"

@implementation TWDABusinesses
-(id) initWithPName: (NSString *) pName
        withAddress: (NSString *) pAddress
          withPhone: (NSString *) pPhone
        withWebsite: (NSString *) pWebsite
         withMember: (bool) pMember
        withLogoURL: (NSString *) pLogoURL
    withDescription: (NSString *) pDescription
     withCategoryId: (int) pCategoryId;
{
    if ((self=[super init]))
    {
        _strName = pName;
        _strAddress = pAddress;
        _strPhone = pPhone;
        _strWebsite = pWebsite;
        _blnMember = pMember;
        _strLogoURL = pLogoURL;
        _strDescription = pDescription;
        _intCategoryId = pCategoryId;
        return self;
    }
    else
    {
        return nil;
    }
}

@end
