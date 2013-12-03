//
//  ViewController.h
//  Standard Deviation Calculator
//
//  Created by Frank Natividad on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UILabel * avg;
    IBOutlet UILabel * med;
    IBOutlet UILabel * sd;
    IBOutlet UILabel * values;
    IBOutlet UIImageView * ohead;
    
    IBOutlet UIButton * calc;
    IBOutlet UIButton * close;
    
}

- (IBAction) calc:(id)sender;
- (IBAction) close:(id)sender;
- (IBAction) num1:(id)sender;
- (IBAction) num2:(id)sender;
- (IBAction) num3:(id)sender;
- (IBAction) num4:(id)sender;
- (IBAction) num5:(id)sender;
- (IBAction) num6:(id)sender;
- (IBAction) num7:(id)sender;
- (IBAction) num8:(id)sender;
- (IBAction) num9:(id)sender;
- (IBAction) num0:(id)sender;
- (IBAction) period:(id)sender;
- (IBAction) comma:(id)sender;
- (IBAction) clear:(id)sender;

@end
