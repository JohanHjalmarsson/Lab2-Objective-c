//
//  QuizGame.h
//  Lab2-Quiz-JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-23.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuizGame : NSObject

- (NSDictionary*) getQuestions;
- (NSString*) getQuestion;
- (NSString*) getAnswerOne;
- (NSString*) getAnswerTwo;
- (NSString*) getAnswerThree;
- (NSString*) getAnswerFour;
- (NSString*) getCorrectAnswer;
- (NSString*) rightOrWrongString:(BOOL)status;
- (NSString*)returnScore;
- (void) increaseScore;
- (BOOL) isAnswerCorrect:(NSString*)answer;
- (BOOL) newQuestionNumber;
@end
