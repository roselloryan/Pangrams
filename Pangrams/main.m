//
//  main.m
//  Pangrams


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        NSString *line = @"A quick brown Fox ju+ 2mps oYver the lazy dog";
        NSString *line = @"A slow yellow fox. 8 Crawls under the proactive dog";
        NSMutableArray *alphabetMutArray = [[NSMutableArray alloc] initWithObjects:@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j", @"k", @"l", @"m", @"n", @"o", @"p", @"q", @"r",@"s", @"t",@"u",@"v", @"w", @"x", @"y", @"z", nil];
        
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            NSCharacterSet *letttersCharSet = [NSCharacterSet letterCharacterSet];
            
            char charAtIndexI =[line characterAtIndex:i];
            
            if ([letttersCharSet characterIsMember: charAtIndexI]) {
                
                [alphabetMutArray removeObject:[[NSString stringWithFormat:@"%c", [line characterAtIndex:i]]lowercaseString]];
        
                if (alphabetMutArray.count == 0) {
                    break;
                }
            }
        }
        
        if (alphabetMutArray.count == 0) {
            NSLog(@"NULL");
        }
        else {
            NSMutableString *solutionString = [[NSMutableString alloc]init];
            NSInteger j = 0;
            for (j = 0; j < alphabetMutArray.count; j++) {
                [solutionString appendString:[alphabetMutArray objectAtIndex:j]];
            }
            NSLog(@"solutionString: %@", solutionString);
        }
    
    }
    return 0;
}
