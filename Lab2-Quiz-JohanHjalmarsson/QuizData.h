//
//  quizData.h
//  Lab2-Quiz-JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-23.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuizData : NSObject

- (NSDictionary*) getQuestionsFromData;
@property (nonatomic) NSMutableArray *questionsAnswered;

@end
