//
//  Melody.m
//  extracredit
//
//  Created by Kelvin Betances on 3/13/14.
//  Copyright (c) 2014 Kelvin Betances. All rights reserved.
//

#import "Melody.h"

@implementation Melody
//get a random note
+(NSString *) randNote
{
  NSArray *notes = [NSArray arrayWithObjects:@"Do1",@"Re",@"Mi",@"Ti",@"Do2",@"La",@"Re",@"Ti",@"Do1",@"Do2", nil];
        
   int randNum = arc4random() % 9;
    //NSLog(@"%i %@",randNum, notes[randNum]);
   return notes[randNum];
        
}
//generate a random sized melody
+(NSMutableArray *) randMelody
{
   int randLength = arc4random() % 20;
    NSLog(@"%i",randLength);
        
   NSMutableArray * melody = [[NSMutableArray alloc]init];
        
   for (int i = 0; i <= randLength; i++)
       [melody insertObject:[Melody randNote] atIndex:i];
    
    [Melody printMelody:melody];
    return melody;
}
//print melody
+(void) printMelody: (NSMutableArray *) n
{
    NSLog(@"%@",n);
}
+(NSMutableArray *) getPics{
    
    NSMutableArray *pics = [[NSMutableArray alloc] initWithCapacity:8];

    for(int i=0; i <= 7; i++)
        [pics addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%i_xylophone.png", i]]];

    return pics;
    
}

@end
