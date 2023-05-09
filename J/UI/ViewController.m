//
//  ViewController.m
//  J
//
//  Created by 崔泰毓 on 16/08/2019.
//  Copyright © 2019 崔泰毓. All rights reserved.
//

#import "ViewController.h"
#import "WordFactory.h"
#import "Word.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton * firstButton;
@property (weak, nonatomic) IBOutlet UIButton * secondButton;
@property (weak, nonatomic) IBOutlet UIButton * thirdButton;
@property (weak, nonatomic) IBOutlet UIButton * forthButton;
@property (weak, nonatomic) IBOutlet UILabel * quesLabel;
@property (weak, nonatomic) IBOutlet UILabel * comboLabel;
@property (weak, nonatomic) IBOutlet UILabel * answerLabel;

@end

static int comboNum = 0;//d连续答对
static int answerNumber = -2;//答案编号
static WordFactory* factory;

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    factory = [[WordFactory alloc] initWithAllProducts];
    [self updateWordPairs];
}

-(void) updateWordPairs {
    self.answerLabel.hidden = true;
    NSMutableArray* wordpairs = [factory productWordPairs];
    
    [self.firstButton setTitle:[[wordpairs objectAtIndex:3] copy] forState:UIControlStateNormal];
    self.firstButton.titleLabel.textColor = [UIColor blackColor];
    
    [self.secondButton setTitle:[[wordpairs objectAtIndex:4] copy] forState:UIControlStateNormal];
    self.secondButton.titleLabel.textColor = [UIColor blackColor];
    
    [self.thirdButton setTitle:[[wordpairs objectAtIndex:5] copy] forState:UIControlStateNormal];
    self.thirdButton.titleLabel.textColor = [UIColor blackColor];
    
    [self.forthButton setTitle:[[wordpairs objectAtIndex:6] copy] forState:UIControlStateNormal];
    self.forthButton.titleLabel.textColor = [UIColor blackColor];
    
    self.quesLabel.text = [[wordpairs objectAtIndex:2] copy];
    NSNumber* n = [wordpairs objectAtIndex:1];
    answerNumber = [n intValue];
    self.answerLabel.text = [[wordpairs objectAtIndex:0] copy];
}

- (IBAction) clickInit:(id) sender {
    if (answerNumber == -1) {//答错等待重制状态
        [self updateWordPairs];
    } else {
        if ((sender == self.firstButton && answerNumber == 0) ||
            (sender == self.secondButton && answerNumber == 1)||
            (sender == self.thirdButton && answerNumber == 2)||
            (sender == self.forthButton && answerNumber == 3)) {//选对答案
            comboNum ++;
            [self updateWordPairs];
        } else {//选错
            comboNum = 0;
            self.answerLabel.hidden = false;
            if (answerNumber == 0) {
                self.firstButton.titleLabel.textColor = [UIColor redColor];
            } else if (answerNumber == 1) {
                self.secondButton.titleLabel.textColor = [UIColor redColor];
            } else if (answerNumber == 2) {
                self.thirdButton.titleLabel.textColor = [UIColor redColor];
            } else {
                self.forthButton.titleLabel.textColor = [UIColor redColor];
            }
            answerNumber = -1;//置为答错等待重制状态
        }
        if (comboNum >= 3) {
            self.comboLabel.text = [NSString stringWithFormat:@"%d", comboNum];
            self.comboLabel.hidden = false;
            if (comboNum >= 8) {
                self.comboLabel.textColor = [UIColor redColor];
            }
        } else {
            self.comboLabel.hidden = true;
            self.comboLabel.textColor = [UIColor blackColor];
        }
    }
}

@end
