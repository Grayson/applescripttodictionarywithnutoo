# About ApplescriptToDictionaryWithNuToo

"ApplescriptToDictionaryWithNuToo" is an unfortunately long name but it is kind of descriptive.  I ran into a problem when developing [Paperclip](http://www.fromconcentratesoftware.com/Paperclip/) in which I couldn't receive a dictionary via applescript.  Now, there are some ways around this, such as defining a dictionary schema, that's all well documented.  Unfortunately, none of them were flexible in any way.  I just wanted to convert an applescript record into an NSDictionary.  I wasn't too particularly worried about the user passing in incompatible types, I just needed a way to catch the basic objects.

To that end, I wrote `NSAppleEventDescriptor+FCSAdditions.[hm]`.  This lets me call `-toObject` on an NSAppleEventDescriptor to turn it into a basic Cocoa object.  I found it both useful and convenient so I decided to release it.

I wrote that category specifically so I could include an applescript interface to a [Nu](http://programming.nu) parser for Paperclip.  I figured that since I wrote `NSAppleEventDescriptor+FCSAdditions.[hm]` for this purpose, I'd go ahead and use it to demonstrate its use.

## About the code

The code is not document in any meaningful way.  `Controller.m` shows a very basic Nu parser built on top of Objective-C.  `NSApplication+Applescript.[hm]` is part of the app's interface with applescript.  It basically intercepts a `perform nu` message and runs it through a simple interpreter.

Note that I'm including the Nu framework with this release.  It's being link to in the .xcodeproj files but there is also a special build phase.  The Nu framework as included is linked for use in one of the standard framework locations (/Library/Frameworks/ by default).  The special build phase re-links it for use in a distributable application.

## Contact information

[Grayson Hansard](mailto:info@fromconcentratesoftware.com)  
[From Concentrate Software](http://www.fromconcentratesoftware.com/)