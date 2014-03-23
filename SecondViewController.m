//
//  SecondViewController.m
//  extracredit
//
//  Created by Kelvin Betances on 3/12/14.
//  Copyright (c) 2014 Kelvin Betances. All rights reserved.
//

#import "SecondViewController.h"
#import "Melody.h"
//extern NSMutableArray* melody;
@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *melodyText;
@property (strong,nonatomic,readwrite) NSMutableArray* melody;
@end

@implementation SecondViewController
@synthesize melody;


NSMutableArray* gMelody;

+(NSMutableArray*)getGMelody{
   
    return gMelody;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changeMelody:(UIButton *)sender {
    
    self.melody = [Melody randMelody];

    self.melodyText.text = [NSString stringWithFormat:@"%@",self.melody];
    
    extern NSMutableArray* gMelody;
    gMelody = self.melody;
    
   
}

@end
