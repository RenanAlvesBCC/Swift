// Generated by Apple Swift version 4.0.3 (swiftlang-900.0.74.1 clang-900.0.39.2)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_attribute(external_source_symbol)
# define SWIFT_STRINGIFY(str) #str
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name) _Pragma(SWIFT_STRINGIFY(clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in=module_name, generated_declaration))), apply_to=any(function, enum, objc_interface, objc_category, objc_protocol))))
# define SWIFT_MODULE_NAMESPACE_POP _Pragma("clang attribute pop")
#else
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name)
# define SWIFT_MODULE_NAMESPACE_POP
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR __attribute__((enum_extensibility(open)))
# else
#  define SWIFT_ENUM_ATTR
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if __has_feature(modules)
@import UIKit;
@import CoreGraphics;
@import AudioKit;
@import Accelerate;
@import ObjectiveC;
#endif

#import <AudioKitUI/AudioKitUI.h>

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

SWIFT_MODULE_NAMESPACE_PUSH("AudioKitUI")
@class UIColor;
@class NSCoder;
@class UITouch;
@class UIEvent;

/// A click and draggable view of an ADSR Envelope (Atttack, Decay, Sustain, Release)
SWIFT_CLASS("_TtC10AudioKitUI10AKADSRView")
@interface AKADSRView : UIView
/// Attack time in seconds, Default: 0.1
@property (nonatomic) double attackDuration;
/// Decay time in seconds, Default: 0.1
@property (nonatomic) double decayDuration;
/// Sustain Level (0-1), Default: 0.5
@property (nonatomic) double sustainLevel;
/// Release time in seconds, Default: 0.1
@property (nonatomic) double releaseDuration;
/// / Color Declarations
/// Color in the attack portion of the UI element
@property (nonatomic, strong) UIColor * _Nonnull attackColor;
/// Color in the decay portion of the UI element
@property (nonatomic, strong) UIColor * _Nonnull decayColor;
/// Color in the sustain portion of the UI element
@property (nonatomic, strong) UIColor * _Nonnull sustainColor;
/// Color in the release portion of the UI element
@property (nonatomic, strong) UIColor * _Nonnull releaseColor;
/// Background color
@property (nonatomic, strong) UIColor * _Nonnull bgColor;
/// Width of the envelope curve
@property (nonatomic) CGFloat curveStrokeWidth;
/// Color of the envelope curve
@property (nonatomic, strong) UIColor * _Nonnull curveColor;
/// Initialize the view, usually with a callback
- (nonnull instancetype)initWithCallback:(void (^ _Nullable)(double, double, double, double))callback OBJC_DESIGNATED_INITIALIZER;
/// Initialization of the view from within interface builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Perform necessary operation to allow the view to be rendered in interface builder
- (void)prepareForInterfaceBuilder;
/// Size of the view
@property (nonatomic, readonly) CGSize intrinsicContentSize;
/// Requeire a constraint based layout with interface builder
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL requiresConstraintBasedLayout;)
+ (BOOL)requiresConstraintBasedLayout SWIFT_WARN_UNUSED_RESULT;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle moving touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Draw the view
- (void)drawRect:(CGRect)rect;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


/// A button, mainly used for playgrounds, but could be useful in your own projects
SWIFT_CLASS("_TtC10AudioKitUI8AKButton")
@interface AKButton : UIView
/// Text to display on the button
@property (nonatomic, copy) NSString * _Nonnull title;
/// Background color of the button
@property (nonatomic, strong) UIColor * _Nonnull color;
/// Button border color
@property (nonatomic, strong) UIColor * _Nullable borderColor;
/// Color when the button is highlighted
@property (nonatomic, strong) UIColor * _Nullable highlightedColor;
/// Button border width
@property (nonatomic) CGFloat borderWidth;
/// Text color
@property (nonatomic, strong) UIColor * _Nullable textColor;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle touch events
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Initialize the button
- (nonnull instancetype)initWithTitle:(NSString * _Nonnull)title color:(UIColor * _Nonnull)color frame:(CGRect)frame callback:(void (^ _Nonnull)(AKButton * _Nonnull))callback OBJC_DESIGNATED_INITIALIZER;
/// Initialization with no details
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
/// Initialization within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
/// Actions to perform to make sure the view is renderable in Interface Builder
- (void)prepareForInterfaceBuilder;
/// Require constraint-based layout
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL requiresConstraintBasedLayout;)
+ (BOOL)requiresConstraintBasedLayout SWIFT_WARN_UNUSED_RESULT;
/// Draw the button
- (void)drawRect:(CGRect)rect;
@end


/// Clickable keyboard mainly used for AudioKit playgrounds
SWIFT_CLASS("_TtC10AudioKitUI14AKKeyboardView")
@interface AKKeyboardView : UIView
/// Number of octaves displayed at once
@property (nonatomic) NSInteger octaveCount;
/// Lowest octave displayed
@property (nonatomic) NSInteger firstOctave;
/// Relative measure of the height of the black keys
@property (nonatomic) CGFloat topKeyHeightRatio;
/// Color of the polyphonic toggle button
@property (nonatomic, strong) UIColor * _Nonnull polyphonicButton;
/// White key color
@property (nonatomic, strong) UIColor * _Nonnull whiteKeyOff;
/// Black key color
@property (nonatomic, strong) UIColor * _Nonnull blackKeyOff;
/// Activated key color
@property (nonatomic, strong) UIColor * _Nonnull keyOnColor;
/// Initialize the keyboard with default info
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
/// Initialize the keyboard
- (nonnull instancetype)initWithWidth:(NSInteger)width height:(NSInteger)height firstOctave:(NSInteger)firstOctave octaveCount:(NSInteger)octaveCount polyphonic:(BOOL)polyphonic OBJC_DESIGNATED_INITIALIZER;
/// Initialization within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Set up the view for rendering in Interface Builder
- (void)prepareForInterfaceBuilder;
/// Keyboard view size
@property (nonatomic, readonly) CGSize intrinsicContentSize;
/// Require constraints
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL requiresConstraintBasedLayout;)
+ (BOOL)requiresConstraintBasedLayout SWIFT_WARN_UNUSED_RESULT;
/// Draw the view
- (void)drawRect:(CGRect)rect;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle touches completed
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle moved touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle stopped touches
- (void)touchesCancelled:(NSSet<UITouch *> * _Nullable)touches withEvent:(UIEvent * _Nullable)event;
@end

@class NSBundle;

SWIFT_CLASS("_TtC10AudioKitUI20AKLiveViewController")
@interface AKLiveViewController : UIViewController
- (void)loadView;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class AKNode;
@class EZAudioFFT;

/// Plot the FFT output from any node in an signal processing graph
SWIFT_CLASS("_TtC10AudioKitUI13AKNodeFFTPlot")
@interface AKNodeFFTPlot : EZAudioPlot <EZAudioFFTDelegate>
/// Required coder-based initialization (for use with Interface Builder)
/// \param coder NSCoder
///
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Initialize the plot with the output from a given node and optional plot size
/// \param input AKNode from which to get the plot data
///
/// \param width Width of the view
///
/// \param height Height of the view
///
- (nonnull instancetype)init:(AKNode * _Nullable)input frame:(CGRect)frame bufferSize:(NSInteger)bufferSize OBJC_DESIGNATED_INITIALIZER;
/// Callback function for FFT data:
/// \param fft EZAudioFFT Reference
///
/// \param updatedWithFFTData A pointer to a c-style array of floats
///
/// \param bufferSize Number of elements in the FFT Data array
///
- (void)fft:(EZAudioFFT * _Null_unspecified)fft updatedWithFFTData:(float * _Nonnull)fftData bufferSize:(vDSP_Length)bufferSize;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


/// Plot the output from any node in an signal processing graph
SWIFT_CLASS("_TtC10AudioKitUI16AKNodeOutputPlot")
@interface AKNodeOutputPlot : EZAudioPlot
- (void)pause;
- (void)resume;
/// The node whose output to graph
@property (nonatomic, strong) AKNode * _Nullable node;
/// Required coder-based initialization (for use with Interface Builder)
/// \param coder NSCoder
///
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Initialize the plot with the output from a given node and optional plot size
/// \param input AKNode from which to get the plot data
///
/// \param width Width of the view
///
/// \param height Height of the view
///
- (nonnull instancetype)init:(AKNode * _Nullable)input frame:(CGRect)frame bufferSize:(NSInteger)bufferSize OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


/// Wrapper class for plotting audio from the final mix in a waveform plot
SWIFT_CLASS("_TtC10AudioKitUI20AKOutputWaveformPlot")
@interface AKOutputWaveformPlot : AKNodeOutputPlot
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init:(AKNode * _Nullable)input frame:(CGRect)frame bufferSize:(NSInteger)bufferSize OBJC_DESIGNATED_INITIALIZER;
@end


/// Class to handle updating via CADisplayLink
SWIFT_CLASS("_TtC10AudioKitUI16AKPlaygroundLoop")
@interface AKPlaygroundLoop : NSObject
/// Repeat this loop at a given period with a code block
/// \param every Period, or interval between block executions
///
/// \param handler Code block to execute
///
- (nonnull instancetype)initWithEvery:(double)dur handler:(void (^ _Nonnull)(void))handler OBJC_DESIGNATED_INITIALIZER;
/// Repeat this loop at a given frequency with a code block
/// \param frequency Frequency of block executions in Hz
///
/// \param handler Code block to execute
///
- (nonnull instancetype)initWithFrequency:(double)frequency handler:(void (^ _Nonnull)(void))handler OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end


/// UIView for playgrounds allowing live views to be generated easily
SWIFT_CLASS("_TtC10AudioKitUI16AKPlaygroundView")
@interface AKPlaygroundView : UIView
/// Initialize the playground view
- (nonnull instancetype)initWithFrame:(CGRect)frameRect OBJC_DESIGNATED_INITIALIZER;
/// Initialize with default size
- (nonnull instancetype)init;
/// Add the subview, and move the Y Position down
- (void)addSubview:(UIView * _Nullable)potentialView;
/// Initialization within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIFont;

/// Preset view scroller
SWIFT_CLASS("_TtC10AudioKitUI18AKPresetLoaderView")
@interface AKPresetLoaderView : UIView
/// Text to display as a label
@property (nonatomic, copy) NSString * _Nonnull label;
/// The presets to scroll through
@property (nonatomic, copy) NSArray<NSString *> * _Nonnull presets;
/// Font size
@property (nonatomic) CGFloat fontSize;
/// Font
@property (nonatomic, strong) UIFont * _Nonnull font;
@property (nonatomic, strong) UIColor * _Nullable bgColor;
@property (nonatomic, strong) UIColor * _Nullable textColor;
@property (nonatomic, strong) UIColor * _Nullable borderColor;
@property (nonatomic) CGFloat borderWidth;
/// Initialize the preset loader view
- (nonnull instancetype)initWithPresets:(NSArray<NSString *> * _Nonnull)presets frame:(CGRect)frame font:(UIFont * _Nonnull)font fontSize:(CGFloat)fontSize initialIndex:(NSInteger)initialIndex callback:(void (^ _Nonnull)(NSString * _Nonnull))callback OBJC_DESIGNATED_INITIALIZER;
/// Initialization with no details
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
/// Initialize in Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)drawRect:(CGRect)rect;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle moved touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
@end


SWIFT_CLASS("_TtC10AudioKitUI17AKPropertyControl")
@interface AKPropertyControl : UIView
/// Current value of the control
@property (nonatomic) double value;
/// Text shown on the control
@property (nonatomic, copy) NSString * _Nonnull property;
/// Format for the number shown on the control
@property (nonatomic, copy) NSString * _Nonnull format;
/// Font size
@property (nonatomic) CGFloat fontSize;
@property (nonatomic, copy) NSArray<NSNumber *> * _Nonnull discreteValues;
/// Initialization within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
- (void)prepareForInterfaceBuilder;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle moved touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle touches ended
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


/// View to choose from audio files to use in playgrounds
SWIFT_CLASS("_TtC10AudioKitUI30AKResourcesAudioFileLoaderView")
@interface AKResourcesAudioFileLoaderView : UIView
/// Handle touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Initialization with no details
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
/// Initialize in Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)drawRect:(CGRect)rect;
@end


/// Wrapper class for plotting audio from the final mix in a rolling plot
SWIFT_CLASS("_TtC10AudioKitUI19AKRollingOutputPlot")
@interface AKRollingOutputPlot : AKNodeOutputPlot
/// Initialize the plot in a frame with a different buffer size
/// \param frame CGRect in which to draw the plot
///
/// \param bufferSize size of the buffer - raise this number if the device struggles with generating the waveform
///
- (nonnull instancetype)initWithFrame:(CGRect)frame bufferSize:(NSInteger)bufferSize OBJC_DESIGNATED_INITIALIZER;
/// Required coder-based initialization (for use with Interface Builder)
/// \param coder NSCoder
///
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init:(AKNode * _Nullable)input frame:(CGRect)frame bufferSize:(NSInteger)bufferSize SWIFT_UNAVAILABLE;
@end


/// Round control for a property
SWIFT_CLASS("_TtC10AudioKitUI12AKRotaryKnob")
@interface AKRotaryKnob : AKPropertyControl
/// Background color
@property (nonatomic, strong) UIColor * _Nullable bgColor;
/// Knob border color
@property (nonatomic, strong) UIColor * _Nullable knobBorderColor;
/// Knob indicator color
@property (nonatomic, strong) UIColor * _Nullable indicatorColor;
/// Knob overlay color
@property (nonatomic, strong) UIColor * _Nonnull knobColor;
/// Text color
@property (nonatomic, strong) UIColor * _Nullable textColor;
/// Bubble font size
@property (nonatomic) CGFloat bubbleFontSize;
@property (nonatomic, strong) UIColor * _Nullable bubbleTextColor;
/// Border width
@property (nonatomic) CGFloat knobBorderWidth;
/// Value bubble border width
@property (nonatomic) CGFloat valueBubbleBorderWidth;
/// Number of indicator points
@property (nonatomic) NSInteger numberOfIndicatorPoints;
/// Initialization within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
/// Actions to perform to make sure the view is renderable in Interface Builder
- (void)prepareForInterfaceBuilder;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle moved touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle touches ending
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Draw the knob
- (void)drawRect:(CGRect)rect;
@end


/// Simple slider interface for AudioKit properties
SWIFT_CLASS("_TtC10AudioKitUI8AKSlider")
@interface AKSlider : AKPropertyControl
/// Background color
@property (nonatomic, strong) UIColor * _Nullable bgColor;
/// Slider border color
@property (nonatomic, strong) UIColor * _Nullable sliderBorderColor;
/// Indicator border color
@property (nonatomic, strong) UIColor * _Nullable indicatorBorderColor;
/// Slider overlay color
@property (nonatomic, strong) UIColor * _Nonnull color;
/// Text color
@property (nonatomic, strong) UIColor * _Nullable textColor;
/// Bubble font size
@property (nonatomic) CGFloat bubbleFontSize;
/// Only integer
@property (nonatomic) BOOL onlyIntegers;
@property (nonatomic) CGFloat sliderBorderWidth;
/// Show value bubble
@property (nonatomic) BOOL showsValueBubble;
/// Value bubble border width
@property (nonatomic) CGFloat valueBubbleBorderWidth;
/// Initialization within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
/// Actions to perform to make sure the view is renderable in Interface Builder
- (void)prepareForInterfaceBuilder;
/// Require constraint-based layout
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL requiresConstraintBasedLayout;)
+ (BOOL)requiresConstraintBasedLayout SWIFT_WARN_UNUSED_RESULT;
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle moved touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle touches ended
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Draw the slider
- (void)drawRect:(CGRect)rect;
@end


/// Incrementor view, normally used for MIDI presets, but could be useful elsehwere
SWIFT_CLASS("_TtC10AudioKitUI9AKStepper")
@interface AKStepper : UIView
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Initialize the stepper view
- (nonnull instancetype)initWithText:(NSString * _Nonnull)text value:(uint8_t)value frame:(CGRect)frame callback:(void (^ _Nonnull)(uint8_t))callback OBJC_DESIGNATED_INITIALIZER;
/// Initialize within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Draw the stepper
- (void)drawRect:(CGRect)rect;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end

@class AKTable;

/// Displays the values in the table into a nice graph
SWIFT_CLASS("_TtC10AudioKitUI11AKTableView")
@interface AKTableView : UIView
/// Initialize the table view
- (nonnull instancetype)init:(AKTable * _Nonnull)table frame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
/// Required initializer
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Draw the table view
- (void)drawRect:(CGRect)rect;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


/// This is primarily for the telephone page in the Synthesis playground
SWIFT_CLASS("_TtC10AudioKitUI15AKTelephoneView")
@interface AKTelephoneView : UIView
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Handle new touches
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nullable)event;
/// Initialize the telephone view
- (nonnull instancetype)initWithFrame:(CGRect)frame callback:(void (^ _Nonnull)(NSString * _Nonnull, NSString * _Nonnull))callback OBJC_DESIGNATED_INITIALIZER;
/// Initialize within Interface Builder
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
/// Draw the telephone view
- (void)drawRect:(CGRect)rect;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end


/// <code>UIGestureRecognizer</code> subclass which tracks the state of individual touches.
SWIFT_CLASS("_TtC10AudioKitUI27MultitouchGestureRecognizer")
@interface MultitouchGestureRecognizer : UIGestureRecognizer
/// Handle new touches
- (void)touchesBegan:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nonnull)event;
/// Handle moved touches
- (void)touchesMoved:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nonnull)event;
/// Handle cancelled touches
- (void)touchesCancelled:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nonnull)event;
/// Handle ended touches
- (void)touchesEnded:(NSSet<UITouch *> * _Nonnull)touches withEvent:(UIEvent * _Nonnull)event;
- (nonnull instancetype)initWithTarget:(id _Nullable)target action:(SEL _Nullable)action OBJC_DESIGNATED_INITIALIZER;
@end




/// Extension of <code>UIGestureRecognizerDelegate</code> which allows the delegate to receive messages relating to
/// individual touches. The <code>delegate</code> property can be set to a class
/// implementing <code>MultitouchGestureRecognizerDelegate</code> and it will receive these messages.
SWIFT_PROTOCOL("_TtP10AudioKitUI35MultitouchGestureRecognizerDelegate_")
@protocol MultitouchGestureRecognizerDelegate <UIGestureRecognizerDelegate>
@optional
/// Called when a touch is started.
- (void)multitouchGestureRecognizer:(MultitouchGestureRecognizer * _Nonnull)gestureRecognizer touchDidBegin:(UITouch * _Nonnull)touch;
/// Called when a touch is updates.
- (void)multitouchGestureRecognizer:(MultitouchGestureRecognizer * _Nonnull)gestureRecognizer touchDidMove:(UITouch * _Nonnull)touch;
/// Called when a touch is cancelled.
- (void)multitouchGestureRecognizer:(MultitouchGestureRecognizer * _Nonnull)gestureRecognizer touchDidCancel:(UITouch * _Nonnull)touch;
/// Called when a touch is ended.
- (void)multitouchGestureRecognizer:(MultitouchGestureRecognizer * _Nonnull)gestureRecognizer touchDidEnd:(UITouch * _Nonnull)touch;
@end

SWIFT_MODULE_NAMESPACE_POP
#pragma clang diagnostic pop
