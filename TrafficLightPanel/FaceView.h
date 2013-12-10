//
//  FaceView.h
//  Happiness
//
//  Created by Chentou on 22/8/12.
//  Copyright (c) 2012 Chentou. All rights reserved.
//

#import <UIKit/UIKit.h>

// forward reference
@class FaceView;

@protocol FaceViewDataSource
- (float)simleForFaceView:(FaceView *)sender;

@end

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;


- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@property (nonatomic, weak)IBOutlet id <FaceViewDataSource> dataSource;

@end
