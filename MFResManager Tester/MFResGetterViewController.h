//
//  FirstViewController.h
//  MFResManager Tester
//
//  Created by Tristan Leblanc on 29/04/16.
//  Copyright © 2016 MooseFactory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MFResGetterViewController : UIViewController

-(IBAction)segmentControlChanged:(id)sender;

@property(nonatomic,assign) NSInteger   tabIndex;

@property(nonatomic,weak) IBOutlet  UILabel* label;
@property(nonatomic,weak) IBOutlet  UIImageView* imageView;
@property(nonatomic,weak) IBOutlet  UILabel* infoLabel;

@end

