//
//  ViewController.m
//  CCCopyProblem
//
//  Created by CC on 2020/12/2.
//

#import "ViewController.h"
#import "CCCopyItem.h"

@interface ViewController ()

@property (nonatomic, copy) CCCopyItem *item;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CCCopyItem *item = [CCCopyItem new];
    NSLog(@"item 1 : %@", item);
    self.item = item;
    NSLog(@"item 2 : %@", self.item);
    
    CCCopyItem *itemA = [[CCCopyItem alloc] init];
    NSLog(@"item A 1 : %@", itemA);
    self.item = itemA;
    NSLog(@"item A 2 : %@", self.item);
    
    CCCopyItem *itemC = [[CCCopyItem alloc] init];
    NSLog(@"item C 1 : %@", itemC);
    self.item = [itemC copy];
    NSLog(@"item C 2 : %@", self.item);
    
    CCCopyItem *itemF = [[CCCopyItem alloc] init];
    itemF.ccname = @"CC FF1";
    NSLog(@"item F 1 : %@, ccname %@", itemC, itemF.ccname);
    self.item = [itemC copy];
    self.item.ccname = @"CC Change";
    NSLog(@"item F 2 : %@, ccname %@", self.item, self.item.ccname);
    NSLog(@"item F 1 change after : %@, ccname %@", itemC, itemF.ccname);
}


@end
