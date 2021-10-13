Pod::Spec.new do |s|  
    s.name              = 'Rtc555Sdk'
    s.version           = '1.1.12'
    s.summary           = 'RTC 555 SDK allows app developers to integrate different features like Voice, Video, Chat, etc leveraging the 555 platform.'
    s.homepage          = 'https://www.555.comcast.com'

    s.author            = { 'Name' => 'harish_gupta@cable.comcast.com' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :http => 'https://github.com/555platform/555-rtc-ios-pod/releases/download/v1.1.12/Rtc555Sdk.zip' }
    s.ios.deployment_target = '10.0'
    s.ios.vendored_frameworks = 'Rtc555Sdk.framework'
	s.vendored_frameworks = 'CoreModules.framework' ,'cxxreact.framework' ,'DoubleConversion.framework' ,  'FBReactNativeSpec.framework', 'folly.framework' ,  'glog.framework' ,  'jsi.framework', 'jsinspector.framework' ,  'jsireact.framework', 'RCTAnimation.framework' ,  'RCTBlob.framework',  'RCTImage.framework', 'RCTLinking.framework' ,  'RCTNetwork.framework' ,  'RCTSettings.framework',  'RCTText.framework',  'RCTTypeSafety.framework',  'RCTVibration.framework',  'react_native_netinfo.framework',  'react_native_555_webrtc.framework',  'React.framework' ,'ReactCommon.framework','ReactNativeIncallManager.framework','RNCAsyncStorage.framework','RNDeviceInfo.framework','WebRTC.framework','yoga.framework','CoreModules.framework','DoubleConversion.framework','react_native_background_timer.framework','RNSound.framework'
	#s.resource = 'Rtc555Sdk.framework/main.jsbundle'
	  other_frameworks =  ['CoreModules', 'cxxreact', 'DoubleConversion', 'FBReactNativeSpec', 'folly', 'glog', 'jsi', 'jsinspector', 'jsireact', 'RCTAnimation', 'RCTBlob', 'RCTImage','RCTLinking','RCTSettings','RCTText','RCTTypeSafety','RCTVibration','react_native_netinfo','rtc_555_webrtc','React','ReactCommon','ReactNativeIncallManager','RNCAsyncStorage','RNDeviceInfo','WebRTC','yoga','CoreModules','DoubleConversion']
	  
	    other_ldflags = '$(inherited) -framework ' + other_frameworks.join(' -framework ') + 
	      ' -lz -lstdc++'

	    s.xcconfig     = {

	      'OTHER_LDFLAGS[arch=arm64]'  => other_ldflags,
	      'OTHER_LDFLAGS[arch=armv7]'  => other_ldflags,
	      'OTHER_LDFLAGS[arch=armv7s]' => other_ldflags,
		  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
	    }
	
	  # s.public_header_files = 'Pod/Classes/**/*.h'
	  # s.frameworks = 'UIKit', 'MapKit'
	  # s.dependency 'AFNetworking', '~> 2.3'
  			
	  s.subspec 'precompiled' do |lib|
	  #lib.public_header_files = 'IrisRtcSdk/webrtc/header'
	  #lib.header_mappings_dir = 'IrisRtcSdk/webrtc/header'
	  #lib.source_files = 'IrisRtcSdk/webrtc/header/WebRTC/*', 'IrisRtcSdk/loggerSdk/header/*'
	  #lib.preserve_paths = 'webrtc/libs/libwebrtc.a'
	  lib.vendored_frameworks = 'cxxreact.framework' ,  'FBReactNativeSpec.framework', 'folly.framework' ,  'glog.framework' ,  'jsi.framework', 'jsinspector.framework' ,  'jsireact.framework', 'RCTAnimation.framework' ,  'RCTBlob.framework',  'RCTImage.framework', 'RCTLinking.framework' ,  'RCTNetwork.framework' ,  'RCTSettings.framework',  'RCTText.framework',  'RCTTypeSafety.framework',  'RCTVibration.framework',  'react_native_netinfo.framework',  'rtc_555_webrtc.framework',  'React.framework' ,'ReactCommon.framework' ,'ReactNativeIncallManager.framework','RNCAsyncStorage.framework','RNDeviceInfo.framework','yoga.framework','CoreModules.framework','DoubleConversion.framework','react_native_background_timer.framework','RNSound.framework'
  
	  lib.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => "$(PLATFORM_DIR)/Developer/Library/Frameworks", 'OTHER_LDFLAGS' => "-ObjC",'ENABLE_BITCODE' => "YES"}
	  end
  
	end
	