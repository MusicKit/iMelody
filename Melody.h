//
//  Melody.h
//  extracredit
//
//  Created by Kelvin Betances on 3/13/14.
//  Copyright (c) 2014 Kelvin Betances. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Melody : NSObject{
    NSMutableArray * melodyArray;
    NSArray * noteArray;
    NSArray * picArray;
    NSArray * soundArray;
    
    
}
+(NSString *) randNote;
+(NSMutableArray *) randMelody;
+(void) printMelody: (NSMutableArray *) m;



@end
