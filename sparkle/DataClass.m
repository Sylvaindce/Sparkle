//
//  DataClass.m
//  
//
//  Created by Sylvain DECOMBE on 10/03/2016.
//
//

#import <Foundation/Foundation.h>
#import "DataClass.h"

@implementation DataClass
@synthesize str;

static DataClass *instance = nil;

+(DataClass *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [DataClass new];
        }
    }
    return instance;
}
@end
