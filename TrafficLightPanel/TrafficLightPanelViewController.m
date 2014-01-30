//
//  TrafficLightPanelViewController.m
//  TrafficLightPanel
//
//  Created by Chentou on 27/8/12.
//  Copyright (c) 2012 Chentou. All rights reserved.
//

#import "TrafficLightPanelViewController.h"
#import "FaceView.h"


@interface TrafficLightPanelViewController ()
@end


@implementation TrafficLightPanelViewController
@synthesize btnView = _btnView;
@synthesize joinView = _joinView;
@synthesize inputNameField = _inputNameField;
@synthesize chatView = _chatView;
@synthesize inputMessageField = _inputMessageField;
@synthesize tView = _tView;
@synthesize messages = _messages;
@synthesize inputStream = _inputStream;
@synthesize outputStream = _outputStream;
@synthesize svrIPaddress = _svrIPaddress;
@synthesize originalCenter = _originalCenter;
@synthesize mainView = _mainView;
@synthesize TLA_Status = _TLA_Status;
@synthesize TLB_Status = _TLB_Status;
@synthesize TLC_Status = _TLC_Status;
@synthesize TLD_Status = _TLD_Status;
@synthesize TLE_Status = _TLE_Status;
@synthesize FOG_Status = _FOG_Status;
@synthesize lastCmdBy = _lastCmdBy;
@synthesize realLightAnimateTLA = _realLightAnimateTLA;
@synthesize realLightAnimateTLB = _realLightAnimateTLB;
@synthesize realLightAnimateTLC = _realLightAnimateTLC;
@synthesize realLightAnimateTLD = _realLightAnimateTLD;
@synthesize realLightAnimateTLE = _realLightAnimateTLE;
@synthesize realLightAnimationONAlarm = _realLightAnimationONAlarm;
@synthesize realLightAnimationONNormal = _realLightAnimationONNormal;
@synthesize realLightAnimationOFFAlarm = _realLightAnimationOFFAlarm;


- (IBAction)BtnPoll:(id)sender {
    NSString *siteName = [sender currentTitle];
    NSLog(@"siteName: %@", siteName);
    
    if ([siteName isEqualToString:@"TLA POLL"]) {
        // send TLA@POLL
        NSString *response = [NSString stringWithFormat:@"msg:TLA@POLL"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString: @"TLB POLL"]) {
        // send TLB@POLL
        NSString *response = [NSString stringWithFormat:@"msg:TLB@POLL"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLC POLL"]) {
        // send TLC@POLL
        NSString *response = [NSString stringWithFormat:@"msg:TLC@POLL"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLD POLL"]) {
        // send TLD@POLL
        NSString *response = [NSString stringWithFormat:@"msg:TLD@POLL"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLE POLL"]) {
        // send TLE@POLL
        NSString *response = [NSString stringWithFormat:@"msg:TLE@POLL"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"FOG POLL"]) {
        // send FH1@POLL
        NSString *response = [NSString stringWithFormat:@"msg:FH1@POLL"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    
}

- (IBAction)BtnOFF:(id)sender {
    NSString *siteName = [sender currentTitle];
    NSLog(@"siteName: %@", siteName);
    
    
    if ([siteName isEqualToString:@"TLA OFF"]) {
        // send TLA@ON
        NSString *response = [NSString stringWithFormat:@"msg:TLA@OFF"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString: @"TLB OFF"]) {
        // send TLB@ON
        NSString *response = [NSString stringWithFormat:@"msg:TLB@OFF"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLC OFF"]) {
        // send TLC @ON
        NSString *response = [NSString stringWithFormat:@"msg:TLC@OFF"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLD OFF"]) {
        // send TLD @ON
        NSString *response = [NSString stringWithFormat:@"msg:TLD@OFF"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLE OFF"]) {
        // send TLE @ON
        NSString *response = [NSString stringWithFormat:@"msg:TLE@OFF"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"FOG OFF"]) {
        // send TLE @ON
        NSString *response = [NSString stringWithFormat:@"msg:FH1@OFF"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}

}

- (IBAction)BtnON:(id)sender {
    NSString *siteName = [sender currentTitle];
    NSLog(@"siteName: %@", siteName);
    
    
    if ([siteName isEqualToString:@"TLA ON"]) {
        // change button color
        // UIButton *button = (UIButton *)sender;
        // [button setBackgroundColor:[UIColor redColor]];
        
        // send TLA@ON
        NSString *response = [NSString stringWithFormat:@"msg:TLA@ON"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString: @"TLB ON"]) {
        // send TLB@ON
        NSString *response = [NSString stringWithFormat:@"msg:TLB@ON"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLC ON"]) {
        // send TLC @ON
        NSString *response = [NSString stringWithFormat:@"msg:TLC@ON"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLD ON"]) {
        // send TLD @ON
        NSString *response = [NSString stringWithFormat:@"msg:TLD@ON"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"TLE ON"]) {
        // send TLE @ON
        NSString *response = [NSString stringWithFormat:@"msg:TLE@ON"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    else if ([siteName isEqualToString:@"FOG ON"]) {
        // send TLE @ON
        NSString *response = [NSString stringWithFormat:@"msg:FH1@ON"];
        NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
        [self.outputStream write:[data bytes] maxLength:[data length]];}
    
}


- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    // keyboard is visible, move views
    if (textField.tag == 1) {
        self.mainView.center = CGPointMake(self.originalCenter.x + 100, self.originalCenter.y);
    } else if (textField.tag == 2) {
        self.mainView.center = CGPointMake(self.originalCenter.x + 250, self.originalCenter.y);
    } else if (textField.tag == 3) {
        self.mainView.center = CGPointMake(self.originalCenter.x + 350, self.originalCenter.y);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    // resign first responder, hide keyboarder, move views
    self.view.center = self.originalCenter;
    
}

- (void)initNetworkCommunication
{
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    
    NSString *svrIP = self.svrIPaddress.text;
    //svrIP = @"172.31.1.131";
    
    //CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"172.31.1.186", 5000, &readStream, &writeStream);
    CFStreamCreatePairWithSocketToHost(NULL, (__bridge CFStringRef)svrIP, 5000, &readStream, &writeStream);
    
    
    self.inputStream = (__bridge NSInputStream *)readStream;
    
    self.outputStream = (__bridge NSOutputStream *)writeStream;
    
    
    // delegate
    [self.inputStream setDelegate:self];
    [self.outputStream setDelegate:self];
    
    //schedule input stream to have procesing in the run loop
    [self.inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [self.outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
    //open the connection
    [self.inputStream open];
    [self.outputStream open];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    NSString *cellValue = [self.messages objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    
    
    return cell;
}

- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent
{
    
    
    NSLog(@"stream event %i", streamEvent);
    
    switch (streamEvent) {
        case NSStreamEventOpenCompleted:
            NSLog(@"Stream opened");
            break;
        case NSStreamEventHasBytesAvailable:
            // msg received
            if (theStream == self.inputStream)
            {
                uint8_t buffer[1024];
                int len;
                
                while ([self.inputStream hasBytesAvailable]) {
                    len = [self.inputStream read:buffer maxLength:sizeof(buffer)];
                    if (len > 0)
                    {
                        NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
                        
                        if (nil != output)
                        {
                            //decode message, split into:
                            // clientName, siteName, siteCMD
                            
                            // add to table 
                            [self messageReceived:output];
                            
                            NSLog(@"server said %@", output);
                            
                            NSRange end = [output rangeOfString:@":"];
                            if (end.length == 0) {
                                
                            } else {
                                NSString *clientName = [output substringToIndex:end.location];
                                NSString *tclientName = [clientName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                                
                                NSString *msgContent = [output substringFromIndex:end.location+1];
                                NSString *tmsgContent = [msgContent stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                                
                                //NSLog(@"Client name:%@", tclientName);
                                //NSLog(@"Client msg:%@", tmsgContent);
                                
                                NSRange endSite = [tmsgContent rangeOfString:@"@"];
                                if (endSite.length !=0) {
                                    NSString *siteName = [tmsgContent substringToIndex:endSite.location];
                                    NSString *tsiteName = [siteName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                                    
                                    NSString *siteCMD = [tmsgContent substringFromIndex:endSite.location+1];
                                    NSString *tsiteCMD = [siteCMD stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                                    
                                    //NSLog(@"Site Name:%@", tsiteName);
                                    //NSLog(@"Site CMD:%@", tsiteCMD);
                                    
                                    
                                    if ([tsiteName isEqualToString:@"TLA"]) {
                                        //self.TLA_Status.text = tsiteCMD;
                                        self.lastCmdBy.text = [@"Last CMD by:" stringByAppendingString:tclientName];
                                        
                                        if ([tsiteCMD isEqualToString:@"ON"]) {
                                            //self.TLA_Status.backgroundColor = [UIColor yellowColor];
                                            self.TLA_Status.text = @"ON CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"OFF"]) {
                                            // self.TLA_Status.backgroundColor = [UIColor grayColor];
                                            [self.realLightAnimateTLA stopAnimating];
                                            self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                            self.TLA_Status.text = @"OFF CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANON"]) {
                                            if (![self.realLightAnimateTLA isAnimating]) {
                                                [self.realLightAnimateTLA startAnimating];
                                                self.TLA_Status.text = @"LANTERN ON";
                                            };
                                        };
                                            
                                        if ([tsiteCMD isEqualToString:@"LANOFF"]){
                                            if ([self.realLightAnimateTLA isAnimating]) {
                                                [self.realLightAnimateTLA stopAnimating];
                                                if (self.realLightAnimateTLA.animationImages == self.realLightAnimationONAlarm) {
                                                    self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                };
                                                self.TLA_Status.text = @"LANTERN OFF";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"ACNG"]) {
                                            if ([self.realLightAnimateTLA isAnimating]) {
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLA startAnimating];
                                            } else {
                                                self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLA_Status.text = @"AC NG";
                                        };
                                            
                                        
                                        if ([tsiteCMD isEqualToString:@"ACOK"]) {
                                            if ([self.realLightAnimateTLA isAnimating]) {
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLA startAnimating];
                                            } else {
                                                self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLA_Status.text = @"AC NORMAL";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPNG"]) {
                                            if ([self.realLightAnimateTLA isAnimating]) {
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLA startAnimating];
                                            } else {
                                                self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLA_Status.text = @"LAMP BURNT";
                                            
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPOK"]) {
                                            if ([self.realLightAnimateTLA isAnimating]) {
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLA startAnimating];
                                            } else {
                                                self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLA.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLA_Status.text = @"LAMP OK";
                                        };

                                    } else if ([tsiteName isEqualToString:@"TLB"]) {
                                        self.lastCmdBy.text = [@"Last CMD by:" stringByAppendingString:tclientName];
                                        
                                        if ([tsiteCMD isEqualToString:@"ON"]) {
                                            self.TLB_Status.text = @"ON CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"OFF"]) {
                                            // self.TLB_Status.backgroundColor = [UIColor grayColor];
                                            [self.realLightAnimateTLB stopAnimating];
                                            self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                            self.TLB_Status.text = @"OFF CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANON"]) {
                                            if (![self.realLightAnimateTLB isAnimating]) {
                                                [self.realLightAnimateTLB startAnimating];
                                                self.TLB_Status.text = @"LANTERN ON";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANOFF"]){
                                            if ([self.realLightAnimateTLB isAnimating]) {
                                                [self.realLightAnimateTLB stopAnimating];
                                                if (self.realLightAnimateTLB.animationImages == self.realLightAnimationONAlarm) {
                                                    self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                };
                                                self.TLB_Status.text = @"LANTERN OFF";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"ACNG"]) {
                                            if ([self.realLightAnimateTLB isAnimating]) {
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLB startAnimating];
                                            } else {
                                                self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLB_Status.text = @"AC NG";
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"ACOK"]) {
                                            if ([self.realLightAnimateTLB isAnimating]) {
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLB startAnimating];
                                            } else {
                                                self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLB_Status.text = @"AC NORMAL";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPNG"]) {
                                            if ([self.realLightAnimateTLB isAnimating]) {
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLB startAnimating];
                                            } else {
                                                self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLB_Status.text = @"LAMP BURNT";
                                            
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPOK"]) {
                                            if ([self.realLightAnimateTLB isAnimating]) {
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLB startAnimating];
                                            } else {
                                                self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLB.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLB_Status.text = @"LAMP OK";
                                        };
                                    } else if ([tsiteName isEqualToString:@"TLC"]) {
                                        self.lastCmdBy.text = [@"Last CMD by:" stringByAppendingString:tclientName];
                                        
                                        if ([tsiteCMD isEqualToString:@"ON"]) {
                                            self.TLC_Status.text = @"ON CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"OFF"]) {
                                            // self.TLC_Status.backgroundColor = [UIColor grayColor];
                                            [self.realLightAnimateTLC stopAnimating];
                                            self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                            self.TLC_Status.text = @"OFF CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANON"]) {
                                            if (![self.realLightAnimateTLC isAnimating]) {
                                                [self.realLightAnimateTLC startAnimating];
                                                self.TLC_Status.text = @"LANTERN ON";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANOFF"]){
                                            if ([self.realLightAnimateTLC isAnimating]) {
                                                [self.realLightAnimateTLC stopAnimating];
                                                if (self.realLightAnimateTLC.animationImages == self.realLightAnimationONAlarm) {
                                                    self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                };
                                                self.TLC_Status.text = @"LANTERN OFF";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"ACNG"]) {
                                            if ([self.realLightAnimateTLC isAnimating]) {
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLC startAnimating];
                                            } else {
                                                self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLC_Status.text = @"AC NG";
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"ACOK"]) {
                                            if ([self.realLightAnimateTLC isAnimating]) {
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLC startAnimating];
                                            } else {
                                                self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLC_Status.text = @"AC NORMAL";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPNG"]) {
                                            if ([self.realLightAnimateTLC isAnimating]) {
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLC startAnimating];
                                            } else {
                                                self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLC_Status.text = @"LAMP BURNT";
                                            
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPOK"]) {
                                            if ([self.realLightAnimateTLC isAnimating]) {
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLC startAnimating];
                                            } else {
                                                self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLC.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLC_Status.text = @"LAMP OK";
                                        };
                                    } else if ([tsiteName isEqualToString:@"TLD"]) {
                                        self.lastCmdBy.text = [@"Last CMD by:" stringByAppendingString:tclientName];
                                        
                                        if ([tsiteCMD isEqualToString:@"ON"]) {
                                            self.TLD_Status.text = @"ON CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"OFF"]) {
                                            // self.TLD_Status.backgroundColor = [UIColor grayColor];
                                            [self.realLightAnimateTLD stopAnimating];
                                            self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                            self.TLD_Status.text = @"OFF CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANON"]) {
                                            if (![self.realLightAnimateTLD isAnimating]) {
                                                [self.realLightAnimateTLD startAnimating];
                                                self.TLD_Status.text = @"LANTERN ON";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANOFF"]){
                                            if ([self.realLightAnimateTLD isAnimating]) {
                                                [self.realLightAnimateTLD stopAnimating];
                                                if (self.realLightAnimateTLD.animationImages == self.realLightAnimationONAlarm) {
                                                    self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                };
                                                self.TLD_Status.text = @"LANTERN OFF";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"ACNG"]) {
                                            if ([self.realLightAnimateTLD isAnimating]) {
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLD startAnimating];
                                            } else {
                                                self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLD_Status.text = @"AC NG";
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"ACOK"]) {
                                            if ([self.realLightAnimateTLD isAnimating]) {
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLD startAnimating];
                                            } else {
                                                self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLD_Status.text = @"AC NORMAL";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPNG"]) {
                                            if ([self.realLightAnimateTLD isAnimating]) {
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLD startAnimating];
                                            } else {
                                                self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLD_Status.text = @"LAMP BURNT";
                                            
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPOK"]) {
                                            if ([self.realLightAnimateTLD isAnimating]) {
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLD startAnimating];
                                            } else {
                                                self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLD.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLD_Status.text = @"LAMP OK";
                                        };
                                    } else if ([tsiteName isEqualToString:@"TLE"]) {
                                        self.lastCmdBy.text = [@"Last CMD by:" stringByAppendingString:tclientName];
                                        
                                        if ([tsiteCMD isEqualToString:@"ON"]) {
                                            self.TLE_Status.text = @"ON CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"OFF"]) {
                                            // self.TLE_Status.backgroundColor = [UIColor grayColor];
                                            [self.realLightAnimateTLE stopAnimating];
                                            self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                            self.TLE_Status.text = @"OFF CMD SENT";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANON"]) {
                                            if (![self.realLightAnimateTLE isAnimating]) {
                                                [self.realLightAnimateTLE startAnimating];
                                                self.TLE_Status.text = @"LANTERN ON";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LANOFF"]){
                                            if ([self.realLightAnimateTLE isAnimating]) {
                                                [self.realLightAnimateTLE stopAnimating];
                                                if (self.realLightAnimateTLE.animationImages == self.realLightAnimationONAlarm) {
                                                    self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                };
                                                self.TLE_Status.text = @"LANTERN OFF";
                                            };
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"ACNG"]) {
                                            if ([self.realLightAnimateTLE isAnimating]) {
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLE startAnimating];
                                            } else {
                                                self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLE_Status.text = @"AC NG";
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"ACOK"]) {
                                            if ([self.realLightAnimateTLE isAnimating]) {
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLE startAnimating];
                                            } else {
                                                self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLE_Status.text = @"AC NORMAL";
                                        };
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPNG"]) {
                                            if ([self.realLightAnimateTLE isAnimating]) {
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONAlarm;
                                                [self.realLightAnimateTLE startAnimating];
                                            } else {
                                                self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_red_bg_on"];
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONAlarm;
                                            };
                                            self.TLE_Status.text = @"LAMP BURNT";
                                            
                                        };
                                        
                                        
                                        if ([tsiteCMD isEqualToString:@"LAMPOK"]) {
                                            if ([self.realLightAnimateTLE isAnimating]) {
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONNormal;
                                                [self.realLightAnimateTLE startAnimating];
                                            } else {
                                                self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
                                                self.realLightAnimateTLE.animationImages = self.realLightAnimationONNormal;
                                            };
                                            self.TLE_Status.text = @"LAMP OK";
                                        };
                                    }
                                }
                                
                            }
                            
                        }
                    }
                }
            }
            break;
        case NSStreamEventErrorOccurred:
            NSLog(@"Can not connect to the host!");
            break;
        case NSStreamEventEndEncountered:
            NSLog(@"server close the connection");
            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            // switch to chatView
            [self.view bringSubviewToFront:self.joinView];
            break;
        default:
            NSLog(@"Unknown event");
            break;
    }
    
    
}

- (void)closeStream:(NSStream *)stream
{
    [stream close];
    [stream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    stream = nil;
    
}

- (void)messageReceived:(NSString *)message
{
    [self.messages addObject:message];
    [self.tView reloadData];
    
    // autoscrolling the table
    NSIndexPath *topIndexPath = [NSIndexPath indexPathForRow:self.messages.count-1 inSection:0];
    [self.tView scrollToRowAtIndexPath:topIndexPath atScrollPosition:UITableViewScrollPositionMiddle animated:YES];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.messages count];
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 0;
}

- (void)viewDidLoad
{
    // set the default chat name
    self.inputNameField.text = @"IP1";
    
    self.messages = [[NSMutableArray alloc] init];
    [self.messages addObject:@"Starting"];
    
    //stored center
    self.originalCenter = self.view.center;

    // animation init
    // NSArray *realLightAnimationNormal;
    // Light ON and Normal
    self.realLightAnimationONNormal = [[NSArray alloc] initWithObjects:
                          [UIImage imageNamed:@"LH_normal_traffic_light"],
                          [UIImage imageNamed:@"LH_yellow_bg_on"],
                          nil];
    
    //NSArray *realLightAnimationAlarm;
    // Light ON and Alarm (AC or Lamp burnt
    self.realLightAnimationONAlarm = [[NSArray alloc] initWithObjects:
                               [UIImage imageNamed:@"LH_normal_traffic_light"],
                               [UIImage imageNamed:@"LH_yellow_bg_on"],
                               [UIImage imageNamed:@"LH_red_bg_on"],
                               nil];
    
    
    self.realLightAnimateTLA.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
    self.realLightAnimateTLA.animationImages = self.realLightAnimationONNormal;
    self.realLightAnimateTLA.animationDuration = 1;
    
    self.realLightAnimateTLB.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
    self.realLightAnimateTLB.animationImages = self.realLightAnimationONNormal;
    self.realLightAnimateTLB.animationDuration = 1;
    
    self.realLightAnimateTLC.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
    self.realLightAnimateTLC.animationImages = self.realLightAnimationONNormal;
    self.realLightAnimateTLC.animationDuration = 1;
    
    self.realLightAnimateTLD.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
    self.realLightAnimateTLD.animationImages = self.realLightAnimationONNormal;
    self.realLightAnimateTLD.animationDuration = 1;
    
    self.realLightAnimateTLE.image = [UIImage imageNamed:@"LH_normal_traffic_light"];
    self.realLightAnimateTLE.animationImages = self.realLightAnimationONNormal;
    self.realLightAnimateTLE.animationDuration = 1;
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //  [self initNetworkCommunication];
}

- (void)viewDidUnload
{
    [self setChatView:nil];
    [self setInputMessageField:nil];
    [self setTView:nil];
    [self setJoinView:nil];
    [self setInputNameField:nil];
    [self setSvrIPaddress:nil];
    [self setBtnView:nil];
    [self setMainView:nil];
    [self setTLA_Status:nil];
    [self setTLB_Status:nil];
    [self setTLC_Status:nil];
    [self setTLD_Status:nil];
    [self setTLE_Status:nil];
    [self setFOG_Status:nil];
    [self setLastCmdBy:nil];
    [self setRealLightAnimateTLA:nil];
    [self setRealLightAnimateTLB:nil];
    [self setRealLightAnimateTLC:nil];
    [self setRealLightAnimateTLD:nil];
    [self setRealLightAnimateTLE:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
    return (interfaceOrientation != UIInterfaceOrientationLandscapeRight);
}

- (IBAction)sendMessage {
    NSString *response = [NSString stringWithFormat:@"msg:%@", self.inputMessageField.text];
    NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
    [self.outputStream write:[data bytes] maxLength:[data length]];
    
}

- (IBAction)joinChat {
    NSString *response = [NSString stringWithFormat:@"iam:%@",self.inputNameField.text];
    NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
    
    [self.outputStream write:[data bytes] maxLength:[data length]];
    
    
    // switch to chatView
    [self.view bringSubviewToFront:self.chatView];
}
- (IBAction)connectServer {
    
    [self initNetworkCommunication];
    
    
}

- (IBAction)disconnectServer {
    [self closeStream:self.inputStream];
    [self closeStream:self.outputStream];
    
    [self.view bringSubviewToFront:self.joinView];
}


@end