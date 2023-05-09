//
//  WordFactory.m
//  J
//
//  Created by 崔泰毓 on 16/08/2019.
//  Copyright © 2019 崔泰毓. All rights reserved.
//

#import "WordFactory.h"
#import "Word.h"

@implementation WordFactory

-(id) initWithAllProducts
{
    self = [super init];
    if (self){
        _productList = [NSArray arrayWithObjects:
                        [[Word alloc] initWithPing:@"あ" WithPian:@"ア" WithPronounciation:@"a"],
                        [[Word alloc] initWithPing:@"い" WithPian:@"イ" WithPronounciation:@"i"],
                        [[Word alloc] initWithPing:@"う" WithPian:@"ウ" WithPronounciation:@"u"],
                        [[Word alloc] initWithPing:@"え" WithPian:@"エ" WithPronounciation:@"e"],
                        [[Word alloc] initWithPing:@"お" WithPian:@"オ" WithPronounciation:@"o"],
                        [[Word alloc] initWithPing:@"か" WithPian:@"カ" WithPronounciation:@"ka"],
                        [[Word alloc] initWithPing:@"き" WithPian:@"キ" WithPronounciation:@"ki"],
                        [[Word alloc] initWithPing:@"く" WithPian:@"ク" WithPronounciation:@"ku"],
                        [[Word alloc] initWithPing:@"け" WithPian:@"ケ" WithPronounciation:@"ke"],
                        [[Word alloc] initWithPing:@"こ" WithPian:@"コ" WithPronounciation:@"ko"],
                        [[Word alloc] initWithPing:@"さ" WithPian:@"サ" WithPronounciation:@"sa"],
                        [[Word alloc] initWithPing:@"し" WithPian:@"シ" WithPronounciation:@"shi"],
                        [[Word alloc] initWithPing:@"す" WithPian:@"ス" WithPronounciation:@"su"],
                        [[Word alloc] initWithPing:@"せ" WithPian:@"セ" WithPronounciation:@"se"],
                        [[Word alloc] initWithPing:@"そ" WithPian:@"ソ" WithPronounciation:@"so"],
                        [[Word alloc] initWithPing:@"た" WithPian:@"タ" WithPronounciation:@"ta"],
                        [[Word alloc] initWithPing:@"ち" WithPian:@"チ" WithPronounciation:@"chi"],
                        [[Word alloc] initWithPing:@"つ" WithPian:@"ツ" WithPronounciation:@"tsu"],
                        [[Word alloc] initWithPing:@"て" WithPian:@"テ" WithPronounciation:@"te"],
                        [[Word alloc] initWithPing:@"と" WithPian:@"ト" WithPronounciation:@"to"],
                        [[Word alloc] initWithPing:@"な" WithPian:@"ナ" WithPronounciation:@"na"],
                        [[Word alloc] initWithPing:@"に" WithPian:@"ニ" WithPronounciation:@"ni"],
                        [[Word alloc] initWithPing:@"ぬ" WithPian:@"ヌ" WithPronounciation:@"nu"],
                        [[Word alloc] initWithPing:@"ね" WithPian:@"ネ" WithPronounciation:@"ne"],
                        [[Word alloc] initWithPing:@"の" WithPian:@"ノ" WithPronounciation:@"no"],
                        [[Word alloc] initWithPing:@"は" WithPian:@"ハ" WithPronounciation:@"ha"],
                        [[Word alloc] initWithPing:@"ひ" WithPian:@"ヒ" WithPronounciation:@"hi"],
                        [[Word alloc] initWithPing:@"ふ" WithPian:@"フ" WithPronounciation:@"fu"],
                        [[Word alloc] initWithPing:@"へ" WithPian:@"へ" WithPronounciation:@"he"],
                        [[Word alloc] initWithPing:@"ほ" WithPian:@"ホ" WithPronounciation:@"ho"],
                        [[Word alloc] initWithPing:@"ま" WithPian:@"マ" WithPronounciation:@"ma"],
                        [[Word alloc] initWithPing:@"み" WithPian:@"ミ" WithPronounciation:@"mi"],
                        [[Word alloc] initWithPing:@"む" WithPian:@"ム" WithPronounciation:@"mu"],
                        [[Word alloc] initWithPing:@"め" WithPian:@"メ" WithPronounciation:@"me"],
                        [[Word alloc] initWithPing:@"も" WithPian:@"モ" WithPronounciation:@"mo"],
                        [[Word alloc] initWithPing:@"や" WithPian:@"ヤ" WithPronounciation:@"ya"],
                        [[Word alloc] initWithPing:@"ゆ" WithPian:@"ユ" WithPronounciation:@"yu"],
                        [[Word alloc] initWithPing:@"よ" WithPian:@"ヨ" WithPronounciation:@"yo"],
                        [[Word alloc] initWithPing:@"ら" WithPian:@"ラ" WithPronounciation:@"ra"],
                        [[Word alloc] initWithPing:@"り" WithPian:@"リ" WithPronounciation:@"ri"],
                        [[Word alloc] initWithPing:@"る" WithPian:@"ル" WithPronounciation:@"ru"],
                        [[Word alloc] initWithPing:@"れ" WithPian:@"レ" WithPronounciation:@"re"],
                        [[Word alloc] initWithPing:@"ろ" WithPian:@"ロ" WithPronounciation:@"ro"],
                        [[Word alloc] initWithPing:@"わ" WithPian:@"ワ" WithPronounciation:@"wa"],
                        [[Word alloc] initWithPing:@"ん" WithPian:@"ン" WithPronounciation:@"n"],
                        [[Word alloc] initWithPing:@"を" WithPian:@"ヲ" WithPronounciation:@"wo"],
                        nil];
    }
    return self;
}

-(NSMutableArray*) productWordPairs
{
    /*
        0:答案
        1:答案的编号
        2:题目
     */
    NSMutableArray* wordpairs = [NSMutableArray arrayWithCapacity:6];
    int quesModel = arc4random_uniform(3);//随机从平假，片假和读音中选择一个做为题目类型
    int ansModel = arc4random_uniform(2);//从另外两个中随机选择一个做为选项类型
    int ans_num = arc4random_uniform(4);
    NSMutableSet* numSet = [NSMutableSet set];
    for (int i = 0; i < 4; i++) {
        int num = arc4random_uniform(46);
        if ([numSet containsObject:[NSNumber numberWithInt:num]]) {
            i--;
            continue;
        } else {
            [numSet addObject:[NSNumber numberWithInt:num]];
        }
        
        Word* word = [self.productList objectAtIndex:num];
        switch (quesModel) {
            case 0:
                {
                    if (ansModel == 0) {
                        [wordpairs addObject: word.pian];
                    } else {
                        [wordpairs addObject: word.pronounciation];
                    }
                    if (i == ans_num){//若当前是题目的答案，则根据答案保存题目和题目的编号
                        [wordpairs insertObject:word.ping atIndex:0];
                        [wordpairs insertObject:[NSNumber numberWithInt:i] atIndex:0];
                        if (ansModel == 0) {
                            [wordpairs insertObject:word.pronounciation atIndex:0];
                        } else {
                            [wordpairs insertObject:word.pian atIndex:0];
                        }
                    }
                }
                break;
            case 1:
                {
                    if (ansModel == 0) {
                        [wordpairs addObject: word.ping];
                    } else {
                        [wordpairs addObject: word.pronounciation];
                    }
                    if (i == ans_num){//若当前是题目的答案，则根据答案保存题目和题目的编号
                        [wordpairs insertObject:word.pian atIndex:0];
                        [wordpairs insertObject:[NSNumber numberWithInt:i] atIndex:0];
                        if (ansModel == 0) {
                            [wordpairs insertObject:word.pronounciation atIndex:0];
                        } else {
                            [wordpairs insertObject:word.ping atIndex:0];
                        }
                    }
                }
                break;
            case 2:
                {
                    if (ansModel == 0) {
                        [wordpairs addObject: word.ping];
                    } else {
                        [wordpairs addObject: word.pian];
                    }
                    if (i == ans_num){//若当前是题目的答案，则根据答案保存题目和题目的编号
                        [wordpairs insertObject:word.pronounciation atIndex:0];
                        [wordpairs insertObject:[NSNumber numberWithInt:i] atIndex:0];
                        if (ansModel == 0) {
                            [wordpairs insertObject:word.pian atIndex:0];
                        } else {
                            [wordpairs insertObject:word.ping atIndex:0];
                        }
                    }
                }
                break;
            default:
                break;
        }
    }
    return wordpairs;
}

@end
