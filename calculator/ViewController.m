//
//  ViewController.m
//  calculator
//
//  Created by chan on 12-10-30.
//  Copyright (c) 2012年 chan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


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


- (IBAction)zero:(id)sender{
    [self firstNumber :0];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

    
}

- (IBAction)one:(id)sender{
    [self firstNumber :1];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];
    

}

- (IBAction)two:(id)sender{
    [self firstNumber :2];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)three:(id)sender{
    [self firstNumber :3];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}
- (IBAction)four:(id)sender{
    [self firstNumber :4];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)five:(id)sender{
    [self firstNumber :5];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)six:(id)sender{
    [self firstNumber :6];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)seven:(id)sender{
    [self firstNumber :7];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)eight:(id)sender{
    [self firstNumber :8];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)night:(id)sender{
    [self firstNumber :9];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];

}

- (IBAction)DengYu:(id)sender {    
    if (f==0) {
        [self calc];
        [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
         i=0;
        ++f;
    } else{
    [self calc];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
    temp =0;
    i=0;
    }
}

- (IBAction)XiaoShuDian:(id)sender {
    j=1;
    
    
}

- (IBAction)clear:(id)sender {
    j=0;
    i=0;
    f=0;
    temp=0;
    temp_result=0;
    [myResult setText:[NSString stringWithFormat:@"0"]];

}
-(IBAction)add:(id)sender{
    [self calc];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
    k='+';
    temp =0;
}

-(IBAction)subtract:(id)sender{
    [self calc];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
    k='-';
    temp =0;
}

-(IBAction)multiply:(id)sender{
    [self calc];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
    [self calc];
    k='x';
    temp =0;
    
}

-(IBAction)divide:(id)sender{
    [self calc];
    [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
    [self calc];
    k='/';
    temp =0;
    
}


-(void)calc{
    switch (k) {
        case '+':
            temp_result = temp +temp_result;
            [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
            break;
        case '-':
            temp_result = temp_result -temp;
            [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
            break;
        case 'x':
            if (temp_result ==0) {
                temp_result=1;
                temp_result = temp *temp_result;
            } else temp_result = temp *temp_result;
            
            [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
            break;
        case '/':
            if (i==0) {
                [myResult setText:[NSString stringWithFormat:@"%.1f",temp]];
                ++i;
                [myResult setText:[NSString stringWithFormat:@"nan"]];
            } else if (temp_result ==0){
                  
                [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];

                }
                
            else{ temp_result = temp_result/temp; 
            [myResult setText:[NSString stringWithFormat:@"%.1f",temp_result]];
            }
            break;
       
         default:
            temp_result=temp;
            break;
            
            
           }
}

- (void) firstNumber:(double)number
{
    if (j ==1 )
    {        
        temp = temp +number * 0.1;
               
    }
    
   else temp = temp*10+number;
        
}


@end
