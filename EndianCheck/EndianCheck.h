//
//  EndianCheck.h
//  EndianCheck
//
//  Created by Calvin Cheng on 1/5/15.
//  Copyright (c) 2015 Hello HQ Pte. Ltd. All rights reserved.
//

#ifndef EndianCheck_EndianCheck_h
#define EndianCheck_EndianCheck_h

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSUInteger, EndianType) {
    ENDIAN_UNKNOWN,
    ENDIAN_LITTLE,
    ENDIAN_BIG
};

@interface EndianCheck : NSObject

-(EndianType)byteOrder;

@end

#endif
