//
//  AFgzipRequestSerializer.m
//  Pods
//
//  Created by Melvin on 24/11/2016.
//
//

#import "AFgzipRequestSerializer.h"
#import "NSData+TFNGZIP.h"

//#import <Godzippa/Godzippa.h>



@interface AFgzipRequestSerializer ()

@property (readwrite, nonatomic, strong) id <AFURLRequestSerialization> serializer;
@end

@implementation AFgzipRequestSerializer

+ (instancetype)serializerWithSerializer:(id<AFURLRequestSerialization>)serializer {
    AFgzipRequestSerializer *gzipSerializer = [self serializer];
    gzipSerializer.serializer = serializer;
    
    return gzipSerializer;
}

#pragma mark - AFURLRequestSerialization

- (NSURLRequest *)requestBySerializingRequest:(NSURLRequest *)request
                               withParameters:(id)parameters
                                        error:(NSError * __autoreleasing *)error
{
    NSError *serializationError = nil;
    NSMutableURLRequest *mutableRequest = [[self.serializer requestBySerializingRequest:request withParameters:parameters error:&serializationError] mutableCopy];
    
    [self.HTTPRequestHeaders enumerateKeysAndObjectsUsingBlock:^(id field, id value, BOOL * __unused stop) {
        if (![request valueForHTTPHeaderField:field]) {
            [mutableRequest setValue:value forHTTPHeaderField:field];
        }
    }];
    
    if (!serializationError && mutableRequest.HTTPBody) {
        NSError *compressionError = nil;
        NSData *compressedData = [mutableRequest.HTTPBody tfn_gzippedData];
//        NSData *compressedData = [mutableRequest.HTTPBody dataByGZipCompressingWithError:&compressionError];
        
        if (compressedData && !compressionError) {
            [mutableRequest setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
            [mutableRequest setHTTPBody:compressedData];
        } else {
            if (error) {
                *error = compressionError;
            }
        }
    } else {
        if (error) {
            *error = serializationError;
        }
    }
    
    return mutableRequest;
}

#pragma mark - NSCoder

- (id)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.serializer = [decoder decodeObjectForKey:NSStringFromSelector(@selector(serializer))];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [super encodeWithCoder:coder];
    
    [coder encodeObject:self.serializer forKey:NSStringFromSelector(@selector(serializer))];
}

#pragma mark - NSCopying

- (id)copyWithZone:(NSZone *)zone {
    AFgzipRequestSerializer *serializer = [[[self class] allocWithZone:zone] init];
    serializer.serializer = self.serializer;
    
    return serializer;
}

@end
