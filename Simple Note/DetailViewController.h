//
//  DetailViewController.h
//  Simple Note
//
//  Created by Bowen Fan on 9/13/15.
//  Copyright (c) 2015 Bowen Fan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextView *tView;

@end

