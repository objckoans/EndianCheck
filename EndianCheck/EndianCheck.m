//
//  EndianCheck.m
//  EndianCheck
//
//  Created by Calvin Cheng on 1/5/15.
//  Copyright (c) 2015 Hello HQ Pte. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EndianCheck.h"

@implementation EndianCheck : NSObject

-(EndianType)byteOrder {
    
    union {
        short sNum;
        char cNum[sizeof(short)];
    } un;
    un.sNum = 0x0102;
    if (sizeof(short) == 2) {
        if (un.cNum[0] == 1 && un.cNum[1] == 2) {
            return ENDIAN_BIG;
        } else if (un.cNum[0] == 2 && un.cNum[1] == 1) {
            return ENDIAN_LITTLE;
        } else {
            return ENDIAN_UNKNOWN;
        }
    } else {
        return ENDIAN_UNKNOWN;
    }
}

@end
