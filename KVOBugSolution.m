//Improved KVO Implementation in Objective-C

@interface MyObservedObject : NSObject
@property (nonatomic, strong) NSString *observedProperty;
@end

@implementation MyObservedObject
- (void)dealloc {
    [self removeObserver:self forKeyPath:@