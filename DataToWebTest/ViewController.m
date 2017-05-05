//
//  ViewController.m
//  DataToWebTest
//
//  Created by lieo on 17/4/26.
//  Copyright © 2017年 lieo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic ,strong) UIWebView *webview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webview = [[UIWebView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.webview];
    
    [self testPDF];
//    [self testPPTX];
//    [self testXlSX];
//    [self testDOCX];
}

- (void)testPDF {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"信鸽推送说明书" ofType:@"pdf"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    [self.webview loadData:data MIMEType:@"application/pdf" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
}
- (void)testPPTX {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"pptx"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    [self.webview loadData:data MIMEType:@"application/vnd.openxmlformats-officedocument.presentationml.presentation" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
}

- (void)testXlSX {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"xlsx"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    [self.webview loadData:data MIMEType:@"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
}

- (void)testDOCX {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"CIImage" ofType:@"docx"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    [self.webview loadData:data MIMEType:@"application/vnd.openxmlformats-officedocument.wordprocessingml.document" textEncodingName:@"UTF-8" baseURL:[NSURL URLWithString:@""]];
}

/**
  文件结尾对照 MIMEType 类型 http://filext.com/faq/office_mime_types.php
 
 .doc application/msword
 .dot application/msword
 .docx application/vnd.openxmlformats-officedocument.wordprocessingml.document
 .dotx application/vnd.openxmlformats-officedocument.wordprocessingml.template
 .docm application/vnd.ms-word.document.macroEnabled.12
 .dotm application/vnd.ms-word.template.macroEnabled.12
 .xls application/vnd.ms-excel
 .xlt application/vnd.ms-excel
 .xla application/vnd.ms-excel
 .xlsx application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
 .xltx application/vnd.openxmlformats-officedocument.spreadsheetml.template
 .xlsm application/vnd.ms-excel.sheet.macroEnabled.12
 .xltm application/vnd.ms-excel.template.macroEnabled.12
 .xlam application/vnd.ms-excel.addin.macroEnabled.12
 .xlsb application/vnd.ms-excel.sheet.binary.macroEnabled.12
 .ppt application/vnd.ms-powerpoint
 .pot application/vnd.ms-powerpoint
 .pps application/vnd.ms-powerpoint
 .ppa application/vnd.ms-powerpoint
 .pptx application/vnd.openxmlformats-officedocument.presentationml.presentation
 .potx application/vnd.openxmlformats-officedocument.presentationml.template
 .ppsx application/vnd.openxmlformats-officedocument.presentationml.slideshow
 .ppam application/vnd.ms-powerpoint.addin.macroEnabled.12
 .pptm application/vnd.ms-powerpoint.presentation.macroEnabled.12
 .potm application/vnd.ms-powerpoint.template.macroEnabled.12
 .ppsm application/vnd.ms-powerpoint.slideshow.macroEnabled.12
 
 **/
@end
