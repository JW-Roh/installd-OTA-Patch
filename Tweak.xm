%hook MIInstallableBundle
- (id)_validateBundle:(id)bundle
  validatingResources:(BOOL)maybe1
  performingOnlineAuthorization:(BOOL)maybe2
  checkingTrustCacheIfApplicable:(BOOL)maybe3
  verifyingForMigrator:(BOOL)maybe4
  allowingFreeProfileValidation:(BOOL)maybe5
  error:(id *)error {
    return %orig(bundle, maybe1, maybe2, maybe3, maybe4, YES, error);
}
%end
