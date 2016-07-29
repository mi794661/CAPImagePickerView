//
//  ViewController.m
//  CAPImagePickerViewDemo
//
//  Created by BOBO on 16/7/29.
//  Copyright © 2016年 captain9911. All rights reserved.
//

#import "ViewController.h"
#import "CAPImagePickerView.h"

@interface ViewController ()<CAPImagePickerViewDelegate>

@end

@implementation ViewController
{
    CAPImagePickerView *imagePickerView;
    UIImageView *previewImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor lightGrayColor];
    //这里对高度的设置是无效的
    imagePickerView = [[CAPImagePickerView alloc] initWithFrame:CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width - 40, 50)];
    imagePickerView.delegate = self;
    imagePickerView.maxImagesCount = 8;
    imagePickerView.lateralCount = 4;
    imagePickerView.deleteButtonHidden = NO;
    imagePickerView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:imagePickerView];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20, 300, [UIScreen mainScreen].bounds.size.width - 40, 50)];
    [button setTitle:@"查看选中的照片" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickedOnPreviewButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    previewImageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 350, [UIScreen mainScreen].bounds.size.width - 40, 150)];
    [self.view addSubview:previewImageView];
    
}

- (void)clickedOnPreviewButton:(id)sender {
    NSLog(@"选中照片的数量：%zd", imagePickerView.selectedPhotos.count);
    if (imagePickerView.selectedPhotos.count == 0) {
        return;
    }
    static int num = 0;
    previewImageView.image = imagePickerView.selectedPhotos[num];
    num ++;
    if (num >= imagePickerView.selectedPhotos.count) {
        num = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
