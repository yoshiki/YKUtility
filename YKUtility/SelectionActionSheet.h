//
//  SelectionActionSheet.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/24.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SelectionActionSheet;

@protocol SelectionActionSheetDelegate <NSObject>

- (NSString *)selectionActionSheet:(SelectionActionSheet *)selectionActionSheet titleForRow:(NSUInteger)row;
- (NSUInteger)selectionActionSheetNumberOfRows:(SelectionActionSheet *)selectionActionSheet;
- (void)selectionActionSheet:(SelectionActionSheet *)selectionActionSheet selectForRow:(NSUInteger)row;

@end

@interface SelectionActionSheet : UIActionSheet <UIPickerViewDelegate, UIPickerViewDataSource>

@property (unsafe_unretained) id<SelectionActionSheetDelegate> selectionActionSheetDelegate;

@end
