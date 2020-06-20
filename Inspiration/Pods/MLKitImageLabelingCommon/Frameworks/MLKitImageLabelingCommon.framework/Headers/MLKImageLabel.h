#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** Represents a label for an image. */
NS_SWIFT_NAME(ImageLabel)
@interface MLKImageLabel : NSObject

/**
 * The human readable label text in American English. For example: "Balloon".
 *
 * @discussion This string is not fit for display purposes, as it is not localized.
 */
@property(nonatomic, copy, readonly) NSString *text;

/** The index of the label. */
@property(nonatomic, readonly) NSInteger index;

/** Confidence for the label in range [0, 1].*/
@property(nonatomic, readonly) float confidence;

/** Unavailable. */
- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
