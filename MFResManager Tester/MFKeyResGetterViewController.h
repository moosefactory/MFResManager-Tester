//
//  SecondViewController.h
//  MFResManager Tester
//
//  Created by Tristan Leblanc on 29/04/16.
//  Copyright © 2016 MooseFactory. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MFResGetterViewController.h"

@interface MFKeyResGetterViewController : MFResGetterViewController

-(IBAction)languageChanged:(id)sender;

@property(nonatomic,strong) NSString* language;

@property(nonatomic,weak) IBOutlet UISegmentedControl* citiesControl;

@end

