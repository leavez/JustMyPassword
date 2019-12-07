
#import "PKHeaders.h"

UIView *findSubviewOfType(UIView *view, Class classType) {
    if ([view isKindOfClass:classType]) {
        return view;
    }
    for (UIView *v in view.subviews) {
        UIView *result = findSubviewOfType(v, classType);
        if (result) {
            return result;
        }
    }
    return nil;
}

%hook PKPasscodeUpgradeExplanationViewController

-(void)explanationViewDidSelectContinue:(id)arg {
    id _flowController = [self valueForKey:@"_flowController"];
    [_flowController newDevicePasscodeViewController:nil didFinishSettingPasscode:YES withError:nil];
}

// modify the UI
- (void)viewWillAppear:(BOOL)animated {
    %orig;

    // rename the button 
    UIButton *button = (UIButton *)findSubviewOfType(self.view, NSClassFromString(@"PKContinuousButton"));
    [button setTitle:@"Just use the current. Go away!" forState:UIControlStateNormal];

    // remove the 'set up later' button
    UIView *latterButton = findSubviewOfType(self.view, NSClassFromString(@"PKPaymentSetupFooterView"));
    latterButton.hidden = YES;
}

%end

