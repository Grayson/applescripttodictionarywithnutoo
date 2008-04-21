//
//  NSApplication+Applescript.h
//  ApplescriptToDictionaryWithNuToo
//
//  Created by Grayson Hansard on 4/21/08.
//  Copyright 2008 From Concentrate Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Nu/Nu.h>
#import "NSAppleEventDescriptor+FCSAdditions.h"

@interface NSApplication (Applescript)
- (id)ASPerformNu:(NSScriptCommand *)aScriptCommand;
@end
