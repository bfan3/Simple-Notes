//
//  DetailViewController.m
//  Simple Note
//
//  Created by Bowen Fan on 9/13/15.
//  Copyright (c) 2015 Bowen Fan. All rights reserved.
//

#import "DetailViewController.h"
#import "Data.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [Data setCurrentKey:_detailItem];
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    NSString *currentNote = [[Data getAllNotes] objectForKey:[Data getCurrentKey]];
    if (![currentNote isEqualToString:kDefaultText]) {
        self.tView.text = currentNote;
    }
    else {
        self.tView.text = @"";
    }
    [self.tView becomeFirstResponder];
}

-(void)viewWillDisappear:(BOOL)animated
{
    if (![self.tView.text isEqualToString:@""]) {
        [Data setNoteForCurrentKey:self.tView.text];
    }
    else {
        
        [Data removeNoteForKey:[Data getCurrentKey]];
    }
    [Data saveNotes];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
