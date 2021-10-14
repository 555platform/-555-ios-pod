#!/bin/bash

#set -o errexit -o nounset -o pipefail



pushd code
pushd Rtc555Sdk
pwd
#ls -l
echo "Download started ::"
curl -L -s https://github.com/555platform/555-rtc-ios-pod/releases/download/sdkdeps/Deps-xc.zip |  tar Jxf -
echo "Download done"

#ls -l Deps-xc

export GEM_HOME="$HOME/.gem"
source ~/.rvm/scripts/rvm
rvm use ruby-2.6.3;

#ruby -h

export LANG=en_US.UTF-8

# select our xcode version to use
export DEVELOPER_DIR="/Applications/Xcode-12.3.app/Contents/Developer/"

security unlock-keychain -p mypassword login.keychain
echo "buildsdkcode bundler installing"
#gem install unf_ext -v '0.0.8' --source 'https://rubygems.org/'
gem install bundler:2.1.4;
#xcodebuild -scheme Rtc555Sdk -destination generic/platform=iOS
#xcodebuild -scheme Rtc555SdkUniversal build

yes "" | bundle version;
yes "" | bundle update;
yes "" | bundle install;
yes "" | bundle update --bundler;
echo "buildsdkcode bundler update bundler done ::"

#bundle exec fastlane build schemeName:${SCHEME}
bundle exec fastlane build_framework framework:Rtc555Sdk


echo "Project vesion is ::"
xcodebuild -showBuildSettings | grep MARKETING_VERSION | tr -d 'MARKETING_VERSION ='

echo "Build vesion is ::"
xcodebuild -showBuildSettings | grep CURRENT_PROJECT_VERSION | tr -d 'CURRENT_PROJECT_VERSION ='

