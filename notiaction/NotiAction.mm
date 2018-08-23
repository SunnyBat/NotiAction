#import <Preferences/Preferences.h>

@interface NotiActionListController: PSListController {
}
@end

@implementation NotiActionListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"NotiAction" target:self] retain];
	}
	return _specifiers;
}

- (void)respring {
	//[(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];
	system("killall -9 SpringBoard backboardd");
}
@end

