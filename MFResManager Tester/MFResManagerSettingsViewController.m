//
//  MFResManagerSettingsViewController.m
//  MFResManager Tester
//
//  Created by Tristan Leblanc on 29/04/16.
//  Copyright © 2016 MooseFactory. All rights reserved.
//

#import "MFResManagerSettingsViewController.h"

#import <MFResManager/MFResManager.h>

@interface MFResManagerSettingsViewController ()

@end

@implementation MFResManagerSettingsViewController

-(void)viewWillAppear:(BOOL)animated
{
    MFResGetterDebugMode debugMode = [MFResGetter defaultMediaGetter].debugMode;
    MFResGetterBehavior  behavior = [MFResGetter defaultMediaGetter].behavior;
    
    self.logSwitch.on = debugMode & MFResGetterLog;
    self.logToFileSwitch.on = debugMode & MFResGetterLogFile;
    self.breaksSwitch.on = debugMode & MFResGetterBreaks;
    
    self.useDefaultSwitch.on = behavior & MFResGetterUseDefault;
    self.searchRootSwitch.on = behavior & MFResGetterSearchRoot;
    
    self.logToFileSwitch.enabled = self.logSwitch.isOn;
    self.breaksSwitch.enabled = self.logSwitch.isOn;
}

-(IBAction)settingChanged:(id)sender
{    
    MFResGetterDebugMode    debugMode = 0;
    MFResGetterBehavior     behavior = 0;
    
    if (self.logSwitch.isOn) debugMode |= MFResGetterLog;
    if (self.logToFileSwitch.isOn) debugMode |= MFResGetterLogFile;
    if (self.breaksSwitch.isOn) debugMode |= MFResGetterBreaks;
    
    self.logToFileSwitch.enabled = self.logSwitch.isOn;
    self.breaksSwitch.enabled = self.logSwitch.isOn;

    if (self.useDefaultSwitch.isOn) behavior |= MFResGetterUseDefault;
    if (self.searchRootSwitch.isOn) behavior |= MFResGetterSearchRoot;
    
    if ( [MFResGetter defaultMediaGetter].behavior != behavior ) {
        [MFResGetter clearCache];
    }
    [MFResGetter defaultMediaGetter].behavior = behavior;
    [MFResGetter defaultMediaGetter].debugMode = debugMode;
}


@end
