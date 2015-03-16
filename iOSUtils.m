//
//  iOSUtils.m
//  E-Sign
//
//  Created by Adam Gask on 11/03/2015.
//  Copyright (c) 2015 Roller Agency. All rights reserved.
//

#import "iOSUtils.h"
#import "YourObject.h"

@implementation iOSUtils


#pragma Reversing Arrays By Date
+(NSMutableArray*) reverseNSMutableArray:(NSMutableArray*) inputArray{
    NSArray * reverse = [[inputArray reverseObjectEnumerator] allObjects];
    return [NSMutableArray arrayWithArray:reverse];

}
+(NSArray*) reverseNSArray:(NSArray*) inputArray{
    NSArray * reverse = [[inputArray reverseObjectEnumerator] allObjects];
    return  reverse;
}

#pragma Sorting Arrays By Date
+(NSArray*) sortArrayAscendingByDateProperty:(NSArray*)inputArray{
    NSArray *sortedArray;
    sortedArray = [inputArray sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        YourObject * objA = (YourObject*) a;
        YourObject * objB = (YourObject*) a;
        NSDate * date1 = objA.date;
        NSDate * date2 = objB.date;
        return [date1 compare:date2];
    }];
    return sortedArray;
    
}
+(NSArray*) sortArrayDescendingByDateProperty:(NSArray*)inputArray{
    NSArray *sortedArray;
    sortedArray = [inputArray sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        YourObject * objA = (YourObject*) a;
        YourObject * objB = (YourObject*) a;
        NSDate * date1 = objA.date;
        NSDate * date2 = objB.date;
        return [date1 compare:date2];
    }];
    return [[sortedArray reverseObjectEnumerator] allObjects];
    
}

#pragma Getting the Current UNIX Timestamp

+(NSTimeInterval) getCurrentTimeStamp {
    return [[NSDate date] timeIntervalSince1970] * 1000;
}

+(NSString*) getCurrentTimeStampString{
    return [NSString stringWithFormat:@"%.f",[self getCurrentTimeStamp]];
}


@end
