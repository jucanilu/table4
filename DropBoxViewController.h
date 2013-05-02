//
//  DropBoxViewController.h
//  table4
//
//  Created by J Berber on 01/05/13.
//  Copyright (c) 2013 Canilu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <DropboxSDK/DropboxSDK.h>
#import "DropBoxViewController.h"


@interface DropBoxViewController :UIViewController <DBRestClientDelegate>{
    DBRestClient *restClient;
}

- (IBAction)dropboxBut:(id)sender;


@end
