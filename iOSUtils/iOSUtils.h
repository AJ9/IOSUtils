//
//  iOSUtils.h
//  E-Sign
//
//  Created by Adam Gask on 11/03/2015.
//  Copyright (c) 2015 Roller Agency. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface iOSUtils : NSObject


//Reversing Arrays
+(NSMutableArray*) reverseNSMutableArray:(NSMutableArray*) inputArray; // [1,2,3] becomes [3,2,1]
+(NSArray*) reverseNSArray:(NSArray*) inputArray; // [1,2,3] becomes [3,2,1]

//Sorting Arrays based on date
+(NSArray*) sortArrayAscendingByDateProperty:(NSArray*)inputArray; // 1st Jan, 2nd Jan, 3rd Jan
+(NSArray*) sortArrayDescendingByDateProperty:(NSArray*)inputArray; // 3rd Jan, 2nd Jan, 1st Jan

@end
