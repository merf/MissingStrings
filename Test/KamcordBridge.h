#ifndef __rdkf_port__KamcordBridge__
#define __rdkf_port__KamcordBridge__

#ifdef ANDROID
#import <BridgeKit/JavaObject.h>
#import <BridgeKit/AndroidContext.h>
#import <BridgeKit/AndroidActivity.h>

@interface KamcordBridge : JavaObject
-(id)initWithActivity:(AndroidActivity*)activity Key:(NSString*)key Secret:(NSString*)secret;
-(void)beginDraw;
-(void)endDraw;
-(void)startRecording;
-(void)stopRecording;
-(void)pauseRecording;
-(void)resumeRecording;
-(void)showView;
-(bool)isEnabled;
@end

@interface Kamcord : NSObject
{
}

-(void)initWithActivity:(AndroidActivity*)activity Key:(NSString*)key Secret:(NSString*)secret;

+(void) beginDraw;
+(void) endDraw;

+(void) startRecording;
+(void) stopRecording;
+(void) pause;
+(void) resume;

+(void) showView;

+(bool) isEnabled;

@end

#endif

#endif /* defined(__rdkf_port__KamcordBridge__) */
