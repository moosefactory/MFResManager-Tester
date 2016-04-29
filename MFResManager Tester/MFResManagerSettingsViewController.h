//
//  MFResManagerSettingsViewController.h
//  MFResManager Tester
//
//  Created by Tristan Leblanc on 29/04/16.
//  Copyright © 2016 MooseFactory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFResManagerSettingsViewController : UIViewController

-(IBAction)settingChanged:(id)sender;

@property(nonatomic,weak) IBOutlet UISwitch *logSwitch;
@property(nonatomic,weak) IBOutlet UISwitch *logToFileSwitch;
@property(nonatomic,weak) IBOutlet UISwitch *breaksSwitch;

@property(nonatomic,weak) IBOutlet UISwitch *useDefaultSwitch;
@property(nonatomic,weak) IBOutlet UISwitch *searchRootSwitch;

@end
