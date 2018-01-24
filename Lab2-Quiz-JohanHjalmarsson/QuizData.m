//
//  quizData.m
//  Lab2-Quiz-JohanHjalmarsson
//
//  Created by Johan Hjalmarsson on 2018-01-23.
//  Copyright © 2018 Johan Hjalmarsson. All rights reserved.
//

#import "QuizData.h"

@implementation QuizData

- (NSDictionary*) getQuestionsFromData {
    NSDictionary *questionsAndAnswers =
    @ {@"1":
        @{@"question": @"Hur stor del av alla våldsbrott utövas av män?",
          @"answer1": @"Ungefär hälften",
          @"answer2": @"30 %",
          @"answer3": @"Ca 84 %",
          @"answer4": @"0 %",
          @"correctAnswer": @"Ca 84 %"
          },
    @"2":
        @{@"question": @"Hur många stor del av de människor som dömts eller misstänkts för sexuellt ofredande är män?",
          @"answer1": @"Väldigt få",
          @"answer2": @"70 %",
          @"answer3": @"Ungefär hälften",
          @"answer4": @"I princip alla (98 %)",
          @"correctAnswer": @"I princip alla (98 %)"
          },
    @"3":
        @{@"question": @"2015 dokumenterades 1171 självmord i Sverige. Hur många var män resp. Kvinnor?",
          @"answer1": @"586 män och 585 kvinnor",
          @"answer2": @"845 män och 326 kvinnor",
          @"answer3": @"Alla var män",
          @"answer4": @"100 män och 1071 kvinnor",
          @"correctAnswer": @"845 män och 326 kvinnor"
          },
        @"4":
        @{@"question": @"Hur många procent av Sveriges kvinnor beräknas ha blivit utsatta för sexuella trakasserier?",
          @"answer1": @"78 %",
          @"answer2": @"Ungefär 5 av 10",
          @"answer3": @"30 %",
          @"answer4": @"12 %",
          @"correctAnswer": @"78 %"
          },
        @"5":
        @{@"question": @"I genomsnitt, hur mycket mer tjänar män än kvinnor per år?",
          @"answer1": @"10 000 :-",
          @"answer2": @"750 000:-",
          @"answer3": @"Inget, det alla tjänar lika mycket oavsett kön",
          @"answer4": @"50 000 :-",
          @"correctAnswer": @"50 000 :-"
          },
        @"6":
        @{@"question": @"Hur stor del av pappaledigheten tar pappor i snitt ut?",
          @"answer1": @"Ungefär hälften",
          @"answer2": @"Ca 20 %",
          @"answer3": @"95 %",
          @"answer4": @"Ingen del alls",
          @"correctAnswer": @"Ca 20 %"
          },
        @"7":
        @{@"question": @"Av alla våldtäkter av vuxna anmälda 2016, hur stor del var av kvinnor?",
          @"answer1": @"Nästan alla (96 %)",
          @"answer2": @"Typ inga",
          @"answer3": @"Ungefär hälten",
          @"answer4": @"En liten del ( 25%)",
          @"correctAnswer": @"Nästan alla (96 %)"
          },
        @"8":
        @{@"question": @"Ungefär hur många tjejer och kvinnor i världen beräknas vara könsstympade?",
          @"answer1": @"Ca 100 000",
          @"answer2": @"Väldigt få",
          @"answer3": @"16 000 000",
          @"answer4": @"140 000 000",
          @"correctAnswer": @"140 000 000"
          },
        @"9":
        @{@"question": @"Hur påverkar machokulturen mäns känsloliv?",
          @"answer1": @"Jättebra!",
          @"answer2": @"Kanske inte så jättebra…",
          @"answer3": @"Inte alls",
          @"answer4": @"Faktiskt inte alls särskilt bra",
          @"correctAnswer": @"Faktiskt inte alls särskilt bra"
          },
        @"0":
        @{@"question": @"Hur många kvinnor i din närhet, kan du anta, har utsatts för sexuellt ofredande eller trakasserier?",
          @"answer1": @"Ingen jag känner i alla fall",
          @"answer2": @"Nästan alla (4 av 5)",
          @"answer3": @"Någon enstaka",
          @"answer4": @"Alla",
          @"correctAnswer": @"Nästan alla (4 av 5)"
          }
    };
    
    return questionsAndAnswers;
}



@end
