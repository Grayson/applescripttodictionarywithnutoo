//
//  NSApplication+Applescript.m
//  ApplescriptToDictionaryWithNuToo
//
//  Created by Grayson Hansard on 4/21/08.
//  Copyright 2008 From Concentrate Software. All rights reserved.
//

#import "NSApplication+Applescript.h"


@implementation NSApplication (Applescript)

- (id)ASPerformNu:(NSScriptCommand *)aScriptCommand
{
	NSString *nuString = [aScriptCommand directParameter];
	NSDictionary *context = [[[aScriptCommand evaluatedArguments] objectForKey:@"context"] toObject];
	id nu = [Nu parser];
	for (NSString *key in [context allKeys]) [nu setValue:[context objectForKey:key] forKey:key];
	id ret = [nu eval:[nu parse:nuString]];
	[nu close];
	return ret;
}

@end
