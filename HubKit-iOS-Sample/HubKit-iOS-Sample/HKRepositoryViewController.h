//
//  HKRepositoryViewController.h
//  HubKit-iOS-Sample
//
//  Created by Josh Johnson on 1/15/13.
//  Copyright (c) 2013 HubKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HKHTTPClient;

@interface HKRepositoryViewController : UIViewController

@property (nonatomic, strong) HKHTTPClient *githubClient;

@end
