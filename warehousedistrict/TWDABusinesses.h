//
//  TWDABusinesses.h
//  warehousedistrict
//
//  Created by Don Miller on 11/17/12.
//  Copyright (c) 2012 GroundSpeed. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TWDABusinesses : NSObject

@property(nonatomic, retain) NSString *strName;
@property(nonatomic, retain) NSString *strAddress;
@property(nonatomic, retain) NSString *strPhone;
@property(nonatomic, retain) NSString *strWebsite;
@property(nonatomic) bool blnMember;
@property(nonatomic, retain) NSString *strLogoURL;
@property(nonatomic, retain) NSString *strDescription;
@property(nonatomic) int intCategoryId;

-(id) initWithPName: (NSString *) pName
        withAddress: (NSString *) pAddress
          withPhone: (NSString *) pPhone
        withWebsite: (NSString *) pWebsite
         withMember: (bool) pMember
        withLogoURL: (NSString *) pLogoURL
    withDescription: (NSString *) pDescription
     withCategoryId: (int) pCategoryId;

@end
