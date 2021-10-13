Pod::Spec.new do |s|  
    s.name              = 'Rtc555Sdk'
    s.version           = '1.1.17'
    s.summary           = 'RTC 555 SDK allows app developers to integrate different features like Voice, Video, Chat, etc leveraging the 555 platform.'
    s.homepage          = 'https://www.555.comcast.com'

    s.author            = { 'Name' => 'harish_gupta@cable.comcast.com' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => 'https://github.com/555platform/555-rtc-ios-pod/releases/download/v1.1.17/Rtc555Sdk.zip' }
    s.ios.deployment_target = '10.0'
    s.vendored_frameworks = 'Rtc555Sdk.xcframework'
	 
	#s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' ,'VALID_ARCHS' => 'arm64 x86_64'}
	#s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386', 'VALID_ARCHS' => 'arm64 x86_64' }
	s.xcconfig     = {
			  #'OTHER_LDFLAGS'  => other_ldflags,
			 # 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386',
			  #'VALID_ARCHS' => 'arm64 x86_64'
		    }
			
	  # s.public_header_files = 'Pod/Classes/**/*.h'
	  # s.xcframeworks = 'UIKit', 'MapKit'
	  # s.dependency 'AFNetworking', '~> 2.3'
  			
	  s.subspec 'precompiled' do |lib|
	  #lib.public_header_files = 'IrisRtcSdk/webrtc/header'
	  #lib.header_mappings_dir = 'IrisRtcSdk/webrtc/header'
	  #lib.source_files = 'IrisRtcSdk/webrtc/header/WebRTC/*', 'IrisRtcSdk/loggerSdk/header/*'
	  #lib.preserve_paths = 'webrtc/libs/libwebrtc.a'
	  lib.vendored_frameworks = 'cxxreact.xcframework' ,  'FBReactNativeSpec.xcframework', 'folly.xcframework' ,  'glog.xcframework' ,  'jsi.xcframework', 'jsinspector.xcframework' ,  'jsireact.xcframework', 'RCTAnimation.xcframework' ,  'RCTBlob.xcframework',  'RCTImage.xcframework', 'RCTLinking.xcframework' ,  'RCTNetwork.xcframework' ,  'RCTSettings.xcframework',  'RCTText.xcframework',  'RCTTypeSafety.xcframework',  'RCTVibration.xcframework',  'react_native_netinfo.xcframework',  'rtc_555_webrtc.xcframework',  'React.xcframework' ,'ReactCommon.xcframework' ,'ReactNativeIncallManager.xcframework','RNCAsyncStorage.xcframework','RNDeviceInfo.xcframework','yoga.xcframework','CoreModules.xcframework','DoubleConversion.xcframework','react_native_background_timer.xcframework','RNSound.xcframework','WebRTC.xcframework'
  
	  lib.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "$(PLATFORM_DIR)/Developer/Library/Frameworks ", 'OTHER_LDFLAGS' => "-ObjC",'ENABLE_BITCODE' => "YES", 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'VALID_ARCHS' => 'arm64 x86_64'}
  	lib.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64','VALID_ARCHS' => 'arm64 x86_64' }
  	lib.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' ,'VALID_ARCHS' => 'arm64 x86_64'}
	  end
  
	end
	