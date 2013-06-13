//
//  UI7Kit.m
//  UI7Kit
//
//  Created by Jeong YunWon on 13. 6. 13..
//  Copyright (c) 2013년 youknowone.org. All rights reserved.
//

#import "UI7Kit.h"

void UI7KitPatchAll(BOOL override7) {
    if (override7 || [[UIDevice currentDevice] needsUI7Kit]) {
        for (NSString *className in @[
             @"UI7ViewController",
             @"UI7TableView",
             @"UI7TableViewCell",
             @"UI7BarButtonItem",
             @"UI7NavigationBar",
             @"UI7NavigationController",
             ]) {
            Class class = NSClassFromString(className);
            [class patch];
        }
    }
}