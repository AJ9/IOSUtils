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


#pragma mark Working with Arrays
+(NSMutableArray*) reverseNSMutableArray:(NSMutableArray*) inputArray{
    NSArray * reverse = [[inputArray reverseObjectEnumerator] allObjects];
    return [NSMutableArray arrayWithArray:reverse];

}
+(NSArray*) reverseNSArray:(NSArray*) inputArray{
    NSArray * reverse = [[inputArray reverseObjectEnumerator] allObjects];
    return  reverse;
}

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

#pragma mark Working with Time

+(NSTimeInterval) getCurrentTimeStamp {
    return [[NSDate date] timeIntervalSince1970] * 1000;
}

+(NSString*) getCurrentTimeStampString{
    return [NSString stringWithFormat:@"%.f",[self getCurrentTimeStamp]];
}

#pragma mark Working with Files

+(BOOL) deleteAllFilesInDirectory:(NSString*) directory withDebugOutput:(BOOL) showDebugStatements{
    
    NSFileManager *fm = [NSFileManager defaultManager];
    NSError *error = nil;
    
    BOOL greatSuccess = YES;
    for (NSString *file in [fm contentsOfDirectoryAtPath:directory error:&error]) {
        if(showDebugStatements){
            NSLog(@"Delete path : %@", [NSString stringWithFormat:@"%@/%@", directory, file]);
        }
        BOOL success = [fm removeItemAtPath:[NSString stringWithFormat:@"%@/%@", directory, file] error:&error];
        if (!success || error) {
            if(showDebugStatements){
                NSLog(@"Error: %@", error.localizedDescription);
            }
            greatSuccess = NO;
        }
    }
    
    return greatSuccess;
    
}
+(BOOL) deleteAllFilesInDocumentsDirectory:(BOOL) showDebugStatements{
    return [self deleteAllFilesInDirectory:[self getDocumentsDirectory] withDebugOutput:showDebugStatements];
    
}
+(NSString*) getDocumentsDirectory{
    NSArray *paths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}


@end
