#include <ApplicationServices/ApplicationServices.h>
#import <Foundation/Foundation.h>

int map;
int remap;
BOOL justTriggered=false;

CGEventRef myCGEventCallback(CGEventTapProxy proxy, CGEventType type,
                  CGEventRef event, void *refcon)
{
    if(justTriggered)
    {
         justTriggered=false;
        return nil;
    }
    // Paranoid sanity check.
    if ((type != kCGEventKeyDown) && (type != kCGEventKeyUp))
        return event;
    
    // The incoming keycode.
    CGKeyCode keycode = (CGKeyCode)CGEventGetIntegerValueField(
                                                               event, kCGKeyboardEventKeycode);
    
   
   if(keycode==map)
   {
        NSLog(@"%d",keycode);
       CGEventSourceRef source = CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
       CGEventRef saveCommandDown = CGEventCreateKeyboardEvent(source, remap, YES);
       CGEventPost(kCGAnnotatedSessionEventTap, saveCommandDown);
       CFRelease(saveCommandDown);
       justTriggered=true;
       return nil;

   }
   
    return event;
}


int main(int argc, const char * argv[])
{
    CFMachPortRef      eventTap;
    CGEventMask        eventMask;
    CFRunLoopSourceRef runLoopSource;
    
    if(argc==3)
    {
        char *p;
        errno = 0;
        map   = (int) strtol(argv[1], &p, 10);
        remap = (int) strtol(argv[2], &p, 10);
        
    }
    else
    {
        exit(2);
    }
    
    // Create an event tap. We are interested in key presses.
    eventMask = ((1 << kCGEventKeyDown) | (1 << kCGEventKeyUp));
    eventTap = CGEventTapCreate(kCGSessionEventTap, kCGHeadInsertEventTap, 0,
                                eventMask, myCGEventCallback, NULL);
    if (!eventTap) {
        fprintf(stderr, "failed to create event tap\n");
        exit(1);
    }
    
    // Create a run loop source.
    runLoopSource = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, eventTap, 0);
    
    // Add to the current run loop.
    CFRunLoopAddSource(CFRunLoopGetCurrent(), runLoopSource,
                       kCFRunLoopCommonModes);
    
    // Enable the event tap.
    CGEventTapEnable(eventTap, true);
    
    // Set it all running.
    CFRunLoopRun();
    NSLog(@"setup");
    exit(0);
}