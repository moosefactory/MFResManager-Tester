//
//  FirstViewController.m
//  MFResManager Tester
//
//  Created by Tristan Leblanc on 29/04/16.
//  Copyright © 2016 MooseFactory. All rights reserved.
//

#import "MFResGetterViewController.h"

#import <MFResManager/MFResManager.h>

@interface MFResGetterViewController ()

@end

@implementation MFResGetterViewController

-(IBAction)segmentControlChanged:(id)sender
{
    UISegmentedControl* ctrl = (UISegmentedControl*)sender;
    self.tabIndex = ctrl.selectedSegmentIndex;
    [self updateInterface];
}

-(void)viewWillAppear:(BOOL)animated
{
    [MFResGetter defaultMediaGetter].baseDirectoryPath = @"images";
    [self updateInterface];
}

-(void)updateInterface
{
    switch (self.tabIndex) {
        case 2:
            self.imageView.image = [MFResGetter imageNamed:@"tokyo.png"];
            self.label.text = @"Tokyo";
            self.infoLabel.text = @"Tokyo image is not in the Bundle.\r\rDefault image is displayed if MFResGetterUseDefault is set.\rMissing image is logged if MFResGetterLog is set.\rMissing image is logged to file if MFResGetterLogFile is set.\rApplication breaks if MFResGetterBreaks is set.";
            break;
        case 0:
            self.imageView.image = [MFResGetter imageWithPath:@"paris.png"];
            self.label.text =@"Paris";
            self.infoLabel.text = @"Paris image is a PNG image located in the 'images' folder in the Bundle.\r\rIt is found via [MFResGetter imageWithPath:@\"paris.png\"]";
            break;
        case 1:
            self.imageView.image = [MFResGetter imageNamed:@"prague"];
            self.label.text =@"Prague";
            self.infoLabel.text = @"Prague image is a JPEG image located in the 'root' folder in the Bundle.\r\rIt is found via [MFResGetter imageNamed:@\"prague\"]\rWhile [UIImage imageNamed] search only PNG in root folder, [MFResGetter imageNamed:] search for png, PNG, jpg,JPG,jpeg,JPEG,tif,TIF,tiff images in specified directory.\rIf it can't find the image, it also search in the root folder ( if behavior is set to MFResGetterSearchRoot )";
            break;
    }
}

@end
