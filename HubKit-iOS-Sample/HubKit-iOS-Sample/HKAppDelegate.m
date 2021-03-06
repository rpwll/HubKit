/*
 Copyright (c) 2013 Rhys Powell and Josh Johnson
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

#import "HKAppDelegate.h"
#import "HKRepositoryViewController.h"

#import "HubKit.h"
#import "HKGitHubAPIKeys.h"

@interface HKAppDelegate ()

@property (nonatomic, strong) HKRepositoryViewController *repositoryViewController;

@end

@implementation HKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.repositoryViewController];
    self.window.rootViewController = navController;

    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - Sample Setup

- (HKRepositoryViewController *)repositoryViewController
{
    if (! _repositoryViewController) {
        _repositoryViewController = [[HKRepositoryViewController alloc] initWithNibName:nil bundle:nil];
        
        HubKit *github = [HubKit new];
        [github setApplicationClientId:kHKGtHubClientID
                                secret:kHKGtHubClientSecret
                       requestedScopes:@[ HKGithubAuthorizationScopes.user, HKGithubAuthorizationScopes.repo ]];
        _repositoryViewController.githubClient = github;
    }
    return _repositoryViewController;
}

@end
