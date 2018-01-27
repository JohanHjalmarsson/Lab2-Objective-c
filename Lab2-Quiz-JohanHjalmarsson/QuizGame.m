//
//  QuizGame.m
//  Lab2-Quiz-JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-23.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "QuizGame.h"
#import "QuizData.h"

@interface QuizGame ()
@property (nonatomic) QuizData *quizData;
@property (nonatomic) int score;
@property (nonatomic) NSDictionary *data;
@property (nonatomic) int questionNumber;
@property (nonatomic) NSMutableArray *questionNumberArray;


@end

@implementation QuizGame

- (instancetype)init {
    self = [super init];
    if (self) {
        self.score = 0;
        [self setUpData];
    }
    return self;
}
- (NSDictionary*) getQuestions {
    return [self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]];
}
- (NSString*) getQuestion {
    return [[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"question"];
}
- (NSString*) getAnswerOne{
    return [[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"answer1"];
}
- (NSString*) getAnswerTwo {
    return [[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"answer2"];
}
- (NSString*) getAnswerThree {
    return [[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"answer3"];
}
- (NSString*) getAnswerFour {
    return [[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"answer4"];
}
- (NSString*) getCorrectAnswer {
    return [[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"correctAnswer"];
}
- (NSString*) rightOrWrongString:(BOOL)status {
    NSString *answer;
    if (status) {
        answer = @"RÄTT!";
        [self increaseScore];
    } else {
        answer = @"FEL!";
    }
    return answer;
}
- (BOOL) isAnswerCorrect:(NSString*)answer {
    if ([answer isEqualToString:[[self.data objectForKey:[NSString stringWithFormat:@"%i", self.questionNumber]] objectForKey:@"correctAnswer"]]) {
        return YES;
    } else {
        return NO;
    }
    return NO;
}
- (void) setUpData {
    self.quizData = [[QuizData alloc] init];
    self.data = [self.quizData getQuestionsFromData];
    self.questionNumberArray = @[@0,@1,@2,@3,@4,@5,@6,@7,@8,@9].mutableCopy;
}
- (BOOL) newQuestionNumber {
    
    if (self.questionNumberArray.count > 5) {
        int random = arc4random_uniform(self.questionNumberArray.count);
        self.questionNumber = [[self.questionNumberArray objectAtIndex:random] integerValue];
        [self.questionNumberArray removeObjectAtIndex:random];
        return YES;
    } else {
        return NO;
    }
}
- (void) increaseScore {
    self.score++;
}
- (NSString*)returnScore {
    NSString *score = [NSString stringWithFormat:@"Du fick %i av 5 poäng", self.score];
    return score;
}

@end
