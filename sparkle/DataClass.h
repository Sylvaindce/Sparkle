//
//  DataClass.h
//  sparkle
//
//  Created by Sylvain DECOMBE on 09/03/2016.
//  Copyright (c) 2016 Sylvain DECOMBE. All rights reserved.
//

#ifndef sparkle_DataClass_h
#define sparkle_DataClass_h

@interface DataClass : NSObject {
    
    NSString *str;
}

@property(nonatomic,retain)NSString *str;
+(DataClass*)getInstance;
@end

#endif
