//
//  AFGzipResponseSerializer.h
//  Pods
//
//  Created by Melvin on 24/11/2016.
//
//

#import <AFNetworking/AFNetworking.h>

@interface AFGzipResponseSerializer : AFHTTPResponseSerializer


+ (instancetype)serializerWithReadingOptions:(NSJSONReadingOptions)readingOptions;

@property (nonatomic, assign) NSJSONReadingOptions readingOptions;

@property (nonatomic, assign) BOOL removesKeysWithNullValues;

@end
