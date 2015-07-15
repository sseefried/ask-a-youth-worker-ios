//
//  ViewController.m
//  Ask a Youth Worker
//
//  Created by Sean Seefried on 26/06/2015.
//  Copyright (c) 2015 MYST. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  CGSize bds = self.view.bounds.size;
  NSURL *url = [NSURL URLWithString:@"http://www.askayouthworker.com.au"];
  self.webView = [[[UIWebView alloc] initWithFrame:CGRectMake(0,0, bds.width, bds.height)] init];
  [self.view addSubview: self.webView];
  [self.webView loadRequest:[NSURLRequest requestWithURL:url]];

}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

@end
