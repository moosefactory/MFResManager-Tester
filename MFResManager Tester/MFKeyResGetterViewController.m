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
{
    // Demonstrates the usage of another MFKeyResGetter for interface elements
    // This one defines the titles for the cities segmented control
    MFKeyResGetter* interfaceGetter;
}

-(void)viewDidLoad
{
    interfaceGetter = [[MFKeyResGetter alloc] initWithTocName:@"interface"];
}

-(void)awakeFromNib
{
    cities = @[@"paris",@"prague",@"beijing",@"dubai",@"bug_town"];
    languages = @[@"en",@"fr",@"cz",@"zh",@"ar"];
    [MFKeyResGetter defaultMediaGetter].baseDirectoryPath = @"images";
}

-(IBAction)languageChanged:(id)sender
{
    self.language = languages[((UISegmentedControl*)sender).selectedSegmentIndex];
    [self updateInterface];
    
    NSArray* cityNames = [interfaceGetter entryForKey:@"city_menu" group:NULL language:self.language];
    if (cityNames) {
        int seg=0;
        for (NSString* cityName in cityNames) {
            [_citiesControl setTitle:cityName forSegmentAtIndex:seg++];
        }
    }
}

-(void)updateInterface
{
    NSString* city = cities[self.tabIndex];
    
    self.imageView.image = [MFKeyResGetter imageForKey:@"image" group:city language:self.language];
    self.label.text = [MFKeyResGetter textForKey:@"title" group:city language:self.language];
    self.infoLabel.text = [MFKeyResGetter textForKey:@"message" group:city language:self.language];

}

@end
