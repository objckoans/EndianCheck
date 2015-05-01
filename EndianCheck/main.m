//
//  main.m
//  EndianCheck
//
//  Created by Calvin Cheng on 1/5/15.
//  Copyright (c) 2015 Hello HQ Pte. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EndianCheck.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        EndianCheck *endian = [[EndianCheck alloc] init];
        NSUInteger endianType = [endian byteOrder];
        NSLog(@"ENDIAN_UNKNOWN is %lu", ENDIAN_UNKNOWN);
        NSLog(@"ENDIAN_LITTLE is %lu", ENDIAN_LITTLE);
        NSLog(@"ENDIAN_BIG is %lu", ENDIAN_BIG);
        
        NSLog(@"Our current device has endian %lu", (unsigned long)endianType);
    }
    return 0;
}
