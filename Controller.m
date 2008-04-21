//
//  Controller.m
//  ApplescriptToDictionaryWithNuToo
//
//  Created by Grayson Hansard on 4/21/08.
//  Copyright 2008 From Concentrate Software. All rights reserved.
//

#import "Controller.h"


@implementation Controller

- (IBAction)runNu:(id)sender
{
	NSString *s = [textView string];
	id nu = [Nu parser];
	id ret = [nu eval:[nu parse:s]];
	[nu close];
	[resultView setString:[ret description]];
}

@end
