//
//  iOSUtils.h
//  E-Sign
//
//  Created by Adam Gask on 11/03/2015.
//  Copyright (c) 2015 Roller Agency. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)


@interface iOSUtils : NSObject

#pragma mark Working with Arrays

//Reversing Arrays
+(NSMutableArray*) reverseNSMutableArray:(NSMutableArray*) inputArray; // [1,2,3] becomes [3,2,1]
+(NSArray*) reverseNSArray:(NSArray*) inputArray; // [1,2,3] becomes [3,2,1]

//Sorting Arrays based on date
+(NSArray*) sortArrayAscendingByDateProperty:(NSArray*)inputArray; // 1st Jan, 2nd Jan, 3rd Jan
+(NSArray*) sortArrayDescendingByDateProperty:(NSArray*)inputArray; // 3rd Jan, 2nd Jan, 1st Jan

#pragma mark Working with Time

//Getting the current UNIX timestamp
+(NSTimeInterval) getCurrentTimeStamp;  //This returns the current UNIX time stamp in milliseconds
+(NSString *) getCurrentTimeStampString; //Returns the current UNIX time stamp as a string

#pragma mark Working with Files

//Deleting files

+(BOOL) deleteAllFilesInDirectory:(NSString*) directory withDebugOutput:(BOOL) showDebugStatements;
+(BOOL) deleteAllFilesInDocumentsDirectory:(BOOL) showDebugStatements;
+(NSString*) getDocumentsDirectory;
+(NSString*) getFileExtention:(NSString*)filename;

#pragma mark Working with Networks

+(NSString*) formatJSONPretty:(id) JSONObj;

#pragma mark Working with Images


/**
 *  Inline method to convert degrees to radians.
 *
 *  @param degrees - the value of the angle in degrees.
 *
 *  @return radian angle value.
 */
static inline double radians (double degrees) {return degrees * M_PI/180;}

+(double) convertDegreesToRadians:(double) degrees;
+(UIImage*) rotateImage:(UIImage*) image by:(float) degrees;

@end
