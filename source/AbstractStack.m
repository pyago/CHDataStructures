//  AbstractStack.m
//  DataStructuresFramework

#import "AbstractStack.h"

@implementation AbstractStack

- (void) pushObject:(id)anObject {
	[NSException raise:NSInternalInconsistencyException
	            format:@"-[%@ %s] -- Unsupported operation.",
	                   [self class], sel_getName(_cmd)];
}

- (id) popObject {
	[NSException raise:NSInternalInconsistencyException
	            format:@"-[%@ %s] -- Unsupported operation.",
	                   [self class], sel_getName(_cmd)];
	return nil;
}

- (id) topObject {
	[NSException raise:NSInternalInconsistencyException
	            format:@"-[%@ %s] -- Unsupported operation.",
	                   [self class], sel_getName(_cmd)];
	
	return nil;	
}

- (NSUInteger) count {
	[NSException raise:NSInternalInconsistencyException
	            format:@"-[%@ %s] -- Unsupported operation.",
	                   [self class], sel_getName(_cmd)];
	
	return -1;
}

+ (id<Stack>) stackWithArray:(NSArray *)array ofOrder:(BOOL)direction {
	if (array == nil)
		return nil;
	id<Stack> stack = [[self alloc] init];
	if (!direction) //so the order to pop will be from 0...n
		for (id object in [array objectEnumerator])
			[stack pushObject:object];
	else  //order to pop will be n...0
		for (id object in [array reverseObjectEnumerator])
			[stack pushObject:object];
	return [stack autorelease];
}

@end
