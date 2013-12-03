//
//  ViewController.m
//  Standard Deviation Calculator
//
//  Created by Frank Natividad on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#include <math.h>

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (IBAction) calc:(id)sender
{
    ohead.hidden = FALSE;
    float total = 0.0f, sd_total = 0.0f, avgf = 0.0f, sd_avgf = 0.0f;
    NSNumber * tmp = 0;
    NSString * values_str = values.text;
    NSArray * values_array = [values_str componentsSeparatedByString: @","];
    values_array = [values_array sortedArrayUsingSelector:@selector(compare:)];
    NSNumberFormatter * format = [[NSNumberFormatter alloc] init];
    [format setNumberStyle:NSNumberFormatterDecimalStyle];
    for (NSString * i in values_array){
        tmp = [format numberFromString:i];
        total += [tmp floatValue];
    }
    
    int value_count = [values_array count];
    
    avgf = total/value_count;
    
    for (NSString * i in values_array){
        tmp = [format numberFromString:i];
        float vf = [tmp floatValue];
        vf -= avgf;
        sd_total += vf * vf;
    }
    
    sd_avgf = sqrt(sd_total/value_count);
    
    avg.text = [NSString stringWithFormat:@"%.02f", avgf];
    sd.text = [NSString stringWithFormat:@"%.02f", sd_avgf];
    if( value_count%2 != 0){
        med.text = [NSString stringWithFormat:@"%@", [values_array objectAtIndex:floor(value_count/2)]];
    }else{
        tmp = [format numberFromString:[values_array objectAtIndex:floor(value_count/2)-1]];
        float middle = [tmp floatValue];
        tmp = [format numberFromString:[values_array objectAtIndex:floor(value_count/2)]];
        middle = (middle) + floor(([tmp floatValue] - middle)/2);
        med.text = [NSString stringWithFormat:@"%.02f", middle];
    }
    ohead.userInteractionEnabled = TRUE;
    close.userInteractionEnabled = TRUE;
    avg.hidden = FALSE;
    sd.hidden = FALSE;
    med.hidden = FALSE;
    ohead.hidden = FALSE;
    
    [format release];
    
}
- (IBAction) close:(id)sender{
    ohead.userInteractionEnabled = FALSE;
    close.userInteractionEnabled = FALSE;
    avg.hidden = TRUE;
    sd.hidden = TRUE;
    med.hidden = TRUE;
    ohead.hidden = TRUE;    
}

- (IBAction) num1:(id)sender{
    values.text = [NSString stringWithFormat:@"%@1", values.text];
}

- (IBAction) num2:(id)sender{
    values.text = [NSString stringWithFormat:@"%@2", values.text];
}

- (IBAction) num3:(id)sender{
    values.text = [NSString stringWithFormat:@"%@3", values.text];
}

- (IBAction) num4:(id)sender{
    values.text = [NSString stringWithFormat:@"%@4", values.text];
}

- (IBAction) num5:(id)sender{
    values.text = [NSString stringWithFormat:@"%@5", values.text];
}

- (IBAction) num6:(id)sender{
    values.text = [NSString stringWithFormat:@"%@6", values.text];
}

- (IBAction) num7:(id)sender{
    values.text = [NSString stringWithFormat:@"%@7", values.text];
}

- (IBAction) num8:(id)sender{
    values.text = [NSString stringWithFormat:@"%@8", values.text];
}

- (IBAction) num9:(id)sender{
    values.text = [NSString stringWithFormat:@"%@9", values.text];
}

- (IBAction) num0:(id)sender{
    values.text = [NSString stringWithFormat:@"%@0", values.text];
}

- (IBAction) period:(id)sender{
    values.text = [NSString stringWithFormat:@"%@.", values.text];
}

- (IBAction) comma:(id)sender{
    values.text = [NSString stringWithFormat:@"%@,", values.text];
}

- (IBAction) clear:(id)sender{
    values.text = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    avg.text = @"0";
    med.text = @"0";
    sd.text = @"0";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
