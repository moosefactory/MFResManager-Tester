//
//  SecondViewController.m
//  MFResManager Tester
//
//  Created by Tristan Leblanc on 29/04/16.
//  Copyright © 2016 MooseFactory. All rights reserved.
//

#import "MFKeyResGetterViewController.h"
#import <MFResManager/MFResManager.h>

@interface MFKeyResGetterViewController ()

@end

static NSArray *cities;
static NSArray *languages;

@implementation MFKeyResGetterViewController

-(void)awakeFromNib
{
    cities = @[@"paris",@"prague",@"beijing",@"dubai",@"bug_town"];
    languages = @[@"en",@"fr",@"cz",@"zh",@"ar",@"it"];
    [MFKeyResGetter defaultMediaGetter].baseDirectoryPath = @"images";
}

-(IBAction)languageChanged:(id)sender
{
    self.language = languages[((UISegmentedControl*)sender).selectedSegmentIndex];
    [self updateInterface];
}

-(void)updateInterface
{
    NSString* city = cities[self.tabIndex];
    
    self.imageView.image = [MFKeyResGetter imageForKey:@"image" group:city language:self.language];
    self.label.text = [MFKeyResGetter textForKey:@"title" group:city language:self.language];
    self.infoLabel.text = [MFKeyResGetter textForKey:@"message" group:city language:self.language];

}

@end
