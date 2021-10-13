#
# This is a podspec for Iris RTC SDK
# Verified using `pod spec lint IrisRtcSdk.podspec`.
#
#

Pod::Spec.new do |s|
s.name             = 'IrisRtcSdk'
s.version          = '3.1.26-beta1'
s.summary          = 'iOS SDK which leverages Comcast Iris Platform'

# This description is used to generate tags and improve search results.
#   * This SDK allows to use leverage Iris platform to make and
#   * receive audio or video calls. It uses webrtc and also uses
#   * Iris platform functionalities such as messaging, notifications
#   * Authentication, history etc.

s.description      = <<-DESC
iOS SDK which leverages Comcast Iris Platform.
DESC

s.homepage         = 'https://www.555.comcast.com'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Name' => 'harish_gupta@cable.comcast.com' }
s.source           = { :http => 'https://github.com/555platform/555-rtc-ios-pod/releases/download/v3.1.26-beta1/IrisRtcSdk.zip' }

s.ios.deployment_target = '10.0'
s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.0" }
s.ios.vendored_frameworks = 'IrisRtcSdk.framework'
#s.source_files = 'IrisRtcSdk/*', 'IrisRtcSdk/IrisRtcSdk/*.{h,m}', 'IrisRtcSdk/IrisRtcSdk/public/*.{h,m}', 'IrisRtcSdk/legacy/*.{h,m,mm}', #'IrisRtcSdk/XMPP/*.{h,m}', 'IrisRtcSdk/XMPP/XEP-0327/*.{h,m}', 'IrisRtcSdk/XMPP/XEP-0166/*.{h,m}', #'IrisRtcSdk/socket.IO-objc/*','IrisRtcSdk/socket.IO-objc/**/*.{h,m,c}','IrisRtcSdk/webrtc/header/WebRTC/*', 'IrisRtcSdk/loggerSdk/header/*'
other_ldflags = '$(inherited) ' 
s.xcconfig        = {

	      'OTHER_LDFLAGS[arch=arm64]'  => other_ldflags,
	      'OTHER_LDFLAGS[arch=armv7]'  => other_ldflags,
	      'OTHER_LDFLAGS[arch=armv7s]' => other_ldflags,
		  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
	    }
#s.public_header_files = 'IrisRtcSdk/IrisRtcSdk/public/*.h', 'IrisRtcSdk/webrtc/header'
s.dependency 'XMPPFramework', '~> 3.7.0'
s.dependency 'libPhoneNumber-iOS', '~> 0.9'
s.dependency 'GoogleWebRTC', '~> 1.1.31999'
#s.exclude_files = 'IrisRtcSdk/IrisRtcSdk/public/IrisRtcSdkCoreData.h'
#s.resources = 'IrisRtcSdk/**/*.{mp3}'
#s.resource_bundles = {'IrisRtcSdk' => ['IrisRtcSdk/**/*.{mp3}']}
#s.frameworks =  'AudioToolbox', 'Foundation', 'AVFoundation','CFNetwork', 'AssetsLibrary', 'VideoToolBox', 'AudioToolBox','GLKit','Security','SystemConfiguration','CoreAudio','VideoToolBox','CoreMedia','CoreFoundation'
#s.library = 'icucore', 'c++', 'xml2', 'resolv'
s.default_subspec = "precompiled"
s.subspec 'precompiled' do |lib|
#lib.public_header_files = 'IrisRtcSdk/webrtc/header'
#lib.header_mappings_dir = 'IrisRtcSdk/webrtc/header'
#lib.source_files = 'IrisRtcSdk/webrtc/header/WebRTC/*', 'IrisRtcSdk/loggerSdk/header/*'
#lib.preserve_paths = 'webrtc/libs/libwebrtc.a'
#lib.vendored_libraries = 'IrisRtcSdk/webrtc/libs/libwebrtc.a' ,  'IrisRtcSdk/loggerSdk/libs/libwebrtc-logger-sdk.a'
#lib.libraries = 'webrtc', 'webrtc-logger-sdk'
lib.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "$(PLATFORM_DIR)/Developer/Library/Frameworks", 'OTHER_LDFLAGS' => "-ObjC",'ENABLE_BITCODE' => "NO"}
end
# s.dependency 'AFNetworking', '~> 2.3'
end

