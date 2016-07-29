//
//  CAPImagePickerView.h
//  CAPImagePickerViewDemo
//
//  Created by captain9911 on 16/7/29.
//  Copyright © 2016年 captain9911. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CAPImagePickerViewDelegate <NSObject>
@required
@end

@interface CAPImagePickerView : UIView
@property (nonatomic, weak) id<CAPImagePickerViewDelegate>delegate;

@property (nonatomic) NSInteger maxImagesCount;     //允许选择的照片总数（必须）
@property (nonatomic) NSInteger lateralCount;       //每行显示的照片数量（必须）
//默认为NO
@property (nonatomic) BOOL deleteButtonHidden;      //是否隐藏删除按钮（可选）
//从这里读取选中的照片
@property (nonatomic, readonly) NSMutableArray <UIImage *> *selectedPhotos;
@end
