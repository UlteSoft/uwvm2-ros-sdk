/**
 * @file MyAppDelegate.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
/* MyAppDelegate */

#import <Cocoa/Cocoa.h>

@interface MyAppDelegate : NSObject
{
    BOOL initial_action_done;
    BOOL should_terminate;
}
- (id)init;
- (IBAction)showPreferences:(id)sender;
- (BOOL)shouldShowUI;
- (BOOL)shouldTerminate;
- (void)testFileTypeBinding;
@end
