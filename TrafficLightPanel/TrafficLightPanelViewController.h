//
//  TrafficLightPanelViewController.h
//  TrafficLightPanel
//
//  Created by Chentou on 27/8/12.
//  Copyright (c) 2012 Chentou. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TrafficLightPanelViewController : UIViewController <NSStreamDelegate, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
@property(nonatomic, strong) NSArray *realLightAnimationONNormal;
@property(nonatomic, strong) NSArray *realLightAnimationONAlarm;
@property(nonatomic, strong) NSArray *realLightAnimationOFFAlarm;

@property (weak, nonatomic) IBOutlet UIView *joinView;
@property (weak, nonatomic) IBOutlet UITextField *inputNameField;
- (IBAction)joinChat;

@property (weak, nonatomic) IBOutlet UIView *chatView;
@property (weak, nonatomic) IBOutlet UITextField *inputMessageField;
@property (weak, nonatomic) IBOutlet UITableView *tView;
- (IBAction)sendMessage;

@property (strong, nonatomic) NSMutableArray *messages;
@property (strong, nonatomic) NSInputStream *inputStream;
@property (strong, nonatomic) NSOutputStream *outputStream;

@property (weak, nonatomic) IBOutlet UITextField *svrIPaddress;
- (IBAction)connectServer;
- (IBAction)disconnectServer;

@property (weak, nonatomic) IBOutlet UIView *btnView;

@property (strong, nonatomic) IBOutlet UIImageView *realLightAnimateTLA;
@property (strong, nonatomic) IBOutlet UIImageView *realLightAnimateTLB;
@property (strong, nonatomic) IBOutlet UIImageView *realLightAnimateTLC;
@property (strong, nonatomic) IBOutlet UIImageView *realLightAnimateTLD;
@property (strong, nonatomic) IBOutlet UIImageView *realLightAnimateTLE;


@property (nonatomic) CGPoint originalCenter;
@property (strong, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet UILabel *TLA_Status;
@property (strong, nonatomic) IBOutlet UILabel *TLB_Status;
@property (strong, nonatomic) IBOutlet UILabel *TLC_Status;
@property (strong, nonatomic) IBOutlet UILabel *TLD_Status;
@property (strong, nonatomic) IBOutlet UILabel *TLE_Status;
@property (strong, nonatomic) IBOutlet UILabel *FOG_Status;
@property (strong, nonatomic) IBOutlet UILabel *lastCmdBy;


@end
