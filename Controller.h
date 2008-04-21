//
//  Controller.h
//  ApplescriptToDictionaryWithNuToo
//
//  Created by Grayson Hansard on 4/21/08.
//  Copyright 2008 From Concentrate Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Nu/Nu.h>

@interface Controller : NSObject {
	IBOutlet NSTextView *textView, *resultView;
}

- (IBAction)runNu:(id)sender;

@end
