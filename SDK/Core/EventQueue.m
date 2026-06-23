#import <Foundation/Foundation.h>

@interface EventQueue : NSObject
@property NSMutableArray *queue;
- (void)push:(NSDictionary*)event;
- (NSDictionary*)pop;
@end

@implementation EventQueue

- (instancetype)init {
    self = [super init];
    self.queue = [NSMutableArray new];
    return self;
}

- (void)push:(NSDictionary*)event {
    if (event) [self.queue addObject:event];
}

- (NSDictionary*)pop {
    if (self.queue.count == 0) return nil;
    NSDictionary *e = self.queue.firstObject;
    [self.queue removeObjectAtIndex:0];
    return e;
}

@end
