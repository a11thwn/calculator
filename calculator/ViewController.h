//
//  ViewController.h
//  calculator
//
//  Created by chan on 12-10-30.
//  Copyright (c) 2012年 chan. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController{
    
    double temp;
    //double number;
    int i;
    double temp_result;
    double temp_1;
    int j ;
    int f;
    IBOutlet UITextField *myResult;
    char k;
    
}
- (void) firstNumber:(double)number;
-(IBAction)add:(id)sender;
-(IBAction)subtract:(id)sender;
-(IBAction)multiply:(id)sender;
-(IBAction)divide:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)night:(id)sender;
- (IBAction)DengYu:(id)sender;
- (IBAction)XiaoShuDian:(id)sender;
- (IBAction)clear:(id)sender;
-(void) calc;
@end
