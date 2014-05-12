#include "KamcordBridge.h"
#import "AppDelegate.h"

#ifdef ANDROID

@implementation Kamcord

+(void)beginDraw
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge beginDraw];
}

+(void)endDraw
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge endDraw];
}

+(void)startRecording
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge startRecording];
}

+(void)stopRecording
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge stopRecording];
}

+(void)pause
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge pauseRecording];
}

+(void)resume
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge resumeRecording];
}

+(void)showView
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge showView];
}

+(void)isEnabled
{
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.kamcordBridge isEnabled];
}

@end

////////////////////////////////////////////////////////////////////////////////////////////////////
// KamcordBridge
////////////////////////////////////////////////////////////////////////////////////////////////////

@implementation KamcordBridge

//--------------------------------------------------------------------------------------------------
+ (void)initializeJava
{
    // Note: this must be called for any class that registers custom
    // java apis, without this call the inheritance may not work as expected
    [super initializeJava];
	
    // Bridge registration methods must be called on the class and NOT self
    // even though that this is a static method (this preserves inheritance
    // to the correct java class
    [KamcordBridge registerConstructorWithSelector:@selector(initWithActivity:Key:Secret:)
                                      arguments:[AndroidActivity className], [NSString className], [NSString className], nil];
    
    [KamcordBridge registerInstanceMethod:@"beginDraw" selector:@selector(beginDraw) arguments:nil];
    [KamcordBridge registerInstanceMethod:@"endDraw" selector:@selector(endDraw) arguments:nil];

    [KamcordBridge registerInstanceMethod:@"startRecording" selector:@selector(startRecording) arguments:nil];
    [KamcordBridge registerInstanceMethod:@"stopRecording" selector:@selector(stopRecording) arguments:nil];
    [KamcordBridge registerInstanceMethod:@"pauseRecording" selector:@selector(pauseRecording) arguments:nil];
    [KamcordBridge registerInstanceMethod:@"resumeRecording" selector:@selector(resumeRecording) arguments:nil];

    [KamcordBridge registerInstanceMethod:@"isEnabled" selector:@selector(isEnabled) returnValue:[JavaClass boolPrimitive]];

    [KamcordBridge registerInstanceMethod:@"showView" selector:@selector(showView) arguments:nil];
}

//--------------------------------------------------------------------------------------------------
+ (NSString *)className
{
    return @"com.anotherplace.java.KamcordBridge";
}

@end

#endif