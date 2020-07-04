@interface SpringBoard
+(id)sharedApplication;
-(void)_simulateLockButtonPress;
@end

%hook SBIdleTimerGlobalStateMonitor
- (void)pocketStateMonitor:(id)arg1 pocketStateDidChangeFrom:(long long)arg2 to:(long long)arg3 {
    %orig;
    HBLogDebug(@"pocketStateMonitor: arg1:%@ arg2:%lld arg3:%lld", arg1, arg2, arg3);
    if(arg3 == 3){
      [[%c(SpringBoard) sharedApplication] _simulateLockButtonPress];
    }
}
%end
