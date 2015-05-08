
// To check if a library is compiled with CocoaPods you
// can use the `COCOAPODS` macro definition which is
// defined in the xcconfigs so it is available in
// headers also when they are imported in the client
// project.


// ComponentKit
#define COCOAPODS_POD_AVAILABLE_ComponentKit
#define COCOAPODS_VERSION_MAJOR_ComponentKit 0
#define COCOAPODS_VERSION_MINOR_ComponentKit 11
#define COCOAPODS_VERSION_PATCH_ComponentKit 0

// PureLayout
#define COCOAPODS_POD_AVAILABLE_PureLayout
#define COCOAPODS_VERSION_MAJOR_PureLayout 2
#define COCOAPODS_VERSION_MINOR_PureLayout 0
#define COCOAPODS_VERSION_PATCH_PureLayout 6

// Underscore.m
#define COCOAPODS_POD_AVAILABLE_Underscore_m
#define COCOAPODS_VERSION_MAJOR_Underscore_m 0
#define COCOAPODS_VERSION_MINOR_Underscore_m 2
#define COCOAPODS_VERSION_PATCH_Underscore_m 1

// Debug build configuration
#ifdef DEBUG

  // FLEX
  #define COCOAPODS_POD_AVAILABLE_FLEX
  #define COCOAPODS_VERSION_MAJOR_FLEX 2
  #define COCOAPODS_VERSION_MINOR_FLEX 0
  #define COCOAPODS_VERSION_PATCH_FLEX 2

  // Reveal-iOS-SDK
  #define COCOAPODS_POD_AVAILABLE_Reveal_iOS_SDK
  #define COCOAPODS_VERSION_MAJOR_Reveal_iOS_SDK 1
  #define COCOAPODS_VERSION_MINOR_Reveal_iOS_SDK 5
  #define COCOAPODS_VERSION_PATCH_Reveal_iOS_SDK 1

#endif
