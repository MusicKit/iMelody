//
//  ThirdViewController.m
//  extracredit
//
//  Created by Kelvin Betances on 3/12/14.
//  Copyright (c) 2014 Kelvin Betances. All rights reserved.
//
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "Melody.h"
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
//#import "AudioServices.h"

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *currentImage;
@property (weak, nonatomic) IBOutlet UIImage *cImage;
@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playMelody:(UIButton *)sender
{

    //GET melody from 2nd view controller
    NSMutableArray *m = [SecondViewController getGMelody];
    
     NSString * soundFile;
    
    // Playing a sound
    NSString *soundFilePath = [NSString stringWithFormat:soundFile,
                               [[NSBundle mainBundle] resourcePath]];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL
                                                                   error:nil];
    for (int i = 0; i <= [m count]-1; i++) {
      
        //update image and play sound
        if ([m[i]  isEqual: @"Do1"])
        {
            self.currentImage.image = [UIImage imageNamed:@"0_xylophone.png"];
            soundFile = @"@/0_note.wave";
            [player play];
        }
        
        else if ([m[i]  isEqual: @"Re"]){
             self.currentImage.image = [UIImage imageNamed:@"1_xylophone.png"];
            soundFile = @"@/1_note.wave";
            [player play];
           
        }
            
        else if ([m[i]  isEqual: @"Mi"]){
            self.currentImage.image = [UIImage imageNamed:@"2_xylophone.png"];
            soundFile = @"@/2_note.wave";
            [player play];
        }
            
        else if ([m[i]  isEqual: @"Ti"]){
            self.currentImage.image = [UIImage imageNamed:@"6_xylophone.png"];
            soundFile = @"@/6_note.wave";
            [player play];
        }
            
        else if ([m[i]  isEqual: @"Do2"]){
            self.currentImage.image = [UIImage imageNamed:@"7_xylophone.png"];
            soundFile = @"@/7_note.wave";
            [player play];
        }
            
        else if ([m[i]  isEqual: @"La"]){
             self.currentImage.image = [UIImage imageNamed:@"5_xylophone.png"];
            soundFile = @"@/5_note.wave";
            [player play];
        }
           
        else if ([m[i]  isEqual: @"Fa"]){
            self.currentImage.image = [UIImage imageNamed:@"3_xylophone.png"];
            soundFile = @"@/3_note.wave";
            [player play];
        }
            
        else if ([m[i]  isEqual: @"So"]){
            self.currentImage.image = [UIImage imageNamed:@"4_xylophone.png"];
            soundFile = @"@/4_note.wave";
            [player play];
        }
            
        
        
    }
    
    


    
}

@end
