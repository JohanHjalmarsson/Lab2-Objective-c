//
//  QuizViewController.m
//  Lab2-Quiz-JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-23.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "QuizViewController.h"
#import "QuizGame.h"

@interface QuizViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UITextView *questionTextView;
@property (weak, nonatomic) IBOutlet UIButton *answerOneButton;
@property (weak, nonatomic) IBOutlet UIButton *answerTwoButton;
@property (weak, nonatomic) IBOutlet UIButton *answerThreeButton;
@property (weak, nonatomic) IBOutlet UIButton *answerFourButton;
@property (weak, nonatomic) IBOutlet UILabel *correctAnswerLabel;
@property (nonatomic) QuizGame *quizGame;
@property (nonatomic) int questionNumber;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *playAgainButton;
@property (weak, nonatomic) IBOutlet UIButton *nextQuestionButton;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpGame];
    [self startGame];
}
- (void) setUpGame {
    self.quizGame = [[QuizGame alloc] init];
    //self.questionNumber = 1;
    [self.quizGame newQuestionNumber];
}

-(void) startGame {
    
        [self changeUi:NO];
        [self enableButtons:self.answerOneButton];
        [self enableButtons:self.answerTwoButton];
        [self enableButtons:self.answerThreeButton];
        [self enableButtons:self.answerFourButton];
        self.scoreLabel.text = [self.quizGame returnScore];
        self.correctAnswerLabel.text = @"";
        self.questionTextView.text = [self.quizGame getQuestion];
        [self.answerOneButton setTitle:[self.quizGame getAnswerOne] forState:UIControlStateNormal];
        [self.answerTwoButton setTitle:[self.quizGame getAnswerTwo] forState:UIControlStateNormal];
        [self.answerThreeButton setTitle:[self.quizGame getAnswerThree] forState:UIControlStateNormal];
        [self.answerFourButton setTitle:[self.quizGame getAnswerFour] forState:UIControlStateNormal];
 
    
}
- (IBAction)answerOneClicked:(id)sender {
    [self isCorrectAnswer:self.answerOneButton];
}
- (IBAction)answerTwoClicked:(id)sender {
    [self isCorrectAnswer:self.answerTwoButton];
}
- (IBAction)answerThreeClicked:(id)sender {
    [self isCorrectAnswer:self.answerThreeButton];
}
- (IBAction)answerFourClicked:(id)sender {
    [self isCorrectAnswer:self.answerFourButton];
}
- (IBAction)nextClicked:(id)sender {
   // self.questionNumber++;
    if([self.quizGame newQuestionNumber]) {
        [self startGame];
    } else {
        [self changeUi:YES];
    }
}
- (IBAction)playAgainClicked:(id)sender {
    [self setUpGame];
    [self startGame];
}


- (void) isCorrectAnswer:(UIButton*)button {
    if ([self.quizGame isAnswerCorrect:button.currentTitle]) {
        self.correctAnswerLabel.text = [self.quizGame rightOrWrongString:YES];
    } else {
        self.correctAnswerLabel.text = [self.quizGame rightOrWrongString:NO];
    }
    [self setButtonColor:self.answerOneButton status:[self.quizGame isAnswerCorrect:self.answerOneButton.currentTitle]];
    [self setButtonColor:self.answerTwoButton status:[self.quizGame isAnswerCorrect:self.answerTwoButton.currentTitle]];
    [self setButtonColor:self.answerThreeButton status:[self.quizGame isAnswerCorrect:self.answerThreeButton.currentTitle]];
    [self setButtonColor:self.answerFourButton status:[self.quizGame isAnswerCorrect:self.answerFourButton.currentTitle]];
    self.scoreLabel.text = [self.quizGame returnScore];
    
}

- (void) enableButtons:(UIButton*)button {
    button.backgroundColor = [UIColor blueColor];
    button.enabled = YES;
}

- (void) setButtonColor:(UIButton*)button status:(BOOL)status {
    if (status) {
        button.backgroundColor = [UIColor greenColor];
        button.enabled = NO;
    } else {
        button.backgroundColor = [UIColor redColor];
        button.enabled = NO;
       
    }
    
}

- (void) changeUi:(bool)status {
    // fixa en array och loopa? För att det blir mycket upprepningar!?
    
    self.answerOneButton.hidden = status;
    self.answerTwoButton.hidden = status;
    self.answerThreeButton.hidden = status;
    self.answerFourButton.hidden = status;
    self.questionTextView.hidden = status;
    self.nextQuestionButton.hidden = status;
    self.correctAnswerLabel.hidden = status;
    
    if (status) {
        self.playAgainButton.hidden = NO;
    } else {
        self.playAgainButton.hidden = YES;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
